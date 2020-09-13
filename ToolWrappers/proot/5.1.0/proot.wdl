version 1.0

task Proot {
  input {
    Boolean? path_use_path
    Boolean? path_make_accessible
    Boolean? command_execute_programs
    Boolean? path_set_directory
    Boolean? value_set_level
    Boolean? print_version_copyright
    Boolean? string_make_kernel_appear
    Boolean? make_user_appear
    Boolean? string_make_user_appear
    Boolean? path_alias_path
    Boolean? path_alias_r
  }
  command <<<
    proot \
      ~{if (path_use_path) then "-r" else ""} \
      ~{if (path_make_accessible) then "-b" else ""} \
      ~{if (command_execute_programs) then "-q" else ""} \
      ~{if (path_set_directory) then "-w" else ""} \
      ~{if (value_set_level) then "-v" else ""} \
      ~{if (print_version_copyright) then "-V" else ""} \
      ~{if (string_make_kernel_appear) then "-k" else ""} \
      ~{if (make_user_appear) then "-0" else ""} \
      ~{if (string_make_user_appear) then "-i" else ""} \
      ~{if (path_alias_path) then "-R" else ""} \
      ~{if (path_alias_r) then "-S" else ""}
  >>>
  parameter_meta {
    path_use_path: "*path*     Use *path* as the new guest root file-system, default is /."
    path_make_accessible: "*path*     Make the content of *path* accessible in the guest rootfs."
    command_execute_programs: "*command*  Execute guest programs through QEMU as specified by *command*."
    path_set_directory: "*path*     Set the initial working directory to *path*."
    value_set_level: "*value*    Set the level of debug information to *value*."
    print_version_copyright: "Print version, copyright, license and contact, then exit."
    string_make_kernel_appear: "*string*   Make current kernel appear as kernel release *string*."
    make_user_appear: "Make current user appear as \\\"root\\\" and fake its privileges."
    string_make_user_appear: "*string*   Make current user and group appear as *string* \\\"uid:gid\\\"."
    path_alias_path: "*path*     Alias: -r *path* + a couple of recommended -b."
    path_alias_r: "*path*     Alias: -0 -r *path* + a couple of recommended -b."
  }
  output {
    File out_stdout = stdout()
  }
}