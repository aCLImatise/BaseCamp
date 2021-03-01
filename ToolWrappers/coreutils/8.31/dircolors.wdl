version 1.0

task Dircolors {
  input {
    Boolean? bourne_shell
    Boolean? c_shell
    Boolean? print_database
  }
  command <<<
    dircolors \
      ~{if (bourne_shell) then "--bourne-shell" else ""} \
      ~{if (c_shell) then "--c-shell" else ""} \
      ~{if (print_database) then "--print-database" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bourne_shell: "output Bourne shell code to set LS_COLORS"
    c_shell: "output C shell code to set LS_COLORS"
    print_database: "output defaults"
  }
  output {
    File out_stdout = stdout()
  }
}