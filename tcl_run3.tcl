open_project [pwd]/Automation/Project_3.xpr

# The command allows the user to set the top module manually
set_property source_mgmt_mode None [current_project]
update_compile_order -fileset sources_1

# Loop over all the top modules and run synthesis and implementation
set folder_path "[pwd]/Modules"
set file_list [glob -nocomplain -directory $folder_path *]


foreach file $file_list {
    set file_name [file tail $file]
    set log_file_path "[pwd]/Automation/Project_3.runs/synth_1/runme.log"
    

    set_property top [string trimright $file_name ".v"] [current_fileset]
    set_property source_mgmt_mode None [current_project]
    update_compile_order -fileset sources_1

    reset_run synth_1
    launch_runs synth_1 -jobs 40
    wait_on_run synth_1
    set log_content [read [open $log_file_path]]

        # Check if synthesis log contains simulation error
        if {[file exists $log_file_path]} {
            if {[string match -nocase "*Vivado Synthesis failed*" $log_content]} {
                # Prints the error message from the log
                puts "Synthesis failed for $file_name. Error message from log:\n$log_content"
                # Continue to the next iteration of the loop skipping all the instructions below
                continue
            }
        }

        reset_run impl_1
        launch_runs impl_1 -jobs 40
        wait_on_run impl_1

        # If implementation is run, the reports are generated and saved in the Impl folder
        open_run impl_1
        report_power > Results/[string trimright $file_name ".v"]/power.txt
        report_timing > Results/[string trimright $file_name ".v"]/timing.txt
        report_utilization > Results/[string trimright $file_name ".v"]/utilization.txt
   }
close_project


