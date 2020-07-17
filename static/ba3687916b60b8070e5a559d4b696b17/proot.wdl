version 1.0

task Proot {
  input {
    Boolean? path_use_path
    Boolean? path_make_accessible
    Boolean? command_execute_guest
    Boolean? path_set_directory
    Boolean? value_set_level
    Boolean? print_version_copyright
    Boolean? string_make_kernel_appear
    Boolean? make_user_appear
    Boolean? string_make_user_appear
    Boolean? path_alias_path
    Boolean? path_alias_r
    String? option
  }
  command <<<
    proot \
      ~{option} \
      ~{true="-r" false="" path_use_path} \
      ~{true="-b" false="" path_make_accessible} \
      ~{true="-q" false="" command_execute_guest} \
      ~{true="-w" false="" path_set_directory} \
      ~{true="-v" false="" value_set_level} \
      ~{true="-V" false="" print_version_copyright} \
      ~{true="-k" false="" string_make_kernel_appear} \
      ~{true="-0" false="" make_user_appear} \
      ~{true="-i" false="" string_make_user_appear} \
      ~{true="-R" false="" path_alias_path} \
      ~{true="-S" false="" path_alias_r}
  >>>
  parameter_meta {
    path_use_path: "*path*     Use *path* as the new guest root file-system, default is /."
    path_make_accessible: "*path*     Make the content of *path* accessible in the guest rootfs."
    command_execute_guest: "*command*  Execute guest programs through QEMU as specified by *command*."
    path_set_directory: "*path*     Set the initial working directory to *path*."
    value_set_level: "*value*    Set the level of debug information to *value*."
    print_version_copyright: "Print version, copyright, license and contact, then exit."
    string_make_kernel_appear: "*string*   Make current kernel appear as kernel release *string*."
    make_user_appear: "Make current user appear as \"root\" and fake its privileges."
    string_make_user_appear: "*string*   Make current user and group appear as *string* \"uid:gid\"."
    path_alias_path: "*path*     Alias: -r *path* + a couple of recommended -b."
    path_alias_r: "*path*     Alias: -0 -r *path* + a couple of recommended -b."
    option: ""
  }
}