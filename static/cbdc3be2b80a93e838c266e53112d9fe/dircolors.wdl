version 1.0

task Dircolors {
  input {
    String? bourne_shell
    String? c_shell
    String? print_database
    String? option
  }
  command <<<
    dircolors \
      ~{option} \
      ~{if defined(bourne_shell) then ("--bourne-shell " +  '"' + bourne_shell + '"') else ""} \
      ~{if defined(c_shell) then ("--c-shell " +  '"' + c_shell + '"') else ""} \
      ~{if defined(print_database) then ("--print-database " +  '"' + print_database + '"') else ""}
  >>>
  parameter_meta {
    bourne_shell: "Bourne shell code to set LS_COLORS"
    c_shell: "C shell code to set LS_COLORS"
    print_database: "defaults"
    option: ""
  }
}