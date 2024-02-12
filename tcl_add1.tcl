#creates a new vivado project
create_project -force [pwd]/Automation/Project_3 -part xc7a200tfbg676-2
set_property board_part xilinx.com:ac701:part0:1.4 [current_project]


set folder_path "[pwd]/Modules"
set file_list [glob -nocomplain -directory $folder_path *]

foreach file $file_list {
    
    set full_path [file join $folder_path $file]
    add_files -norecurse $full_path
}


update_compile_order -fileset sources_1
close_project
