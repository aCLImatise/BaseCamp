version 1.0

task PhylophlanWriteDefaultConfigssh {
  input {
    String? mode
    Boolean? error_exists_make
    String mkdir
    Directory directory_dot_dot_dot
  }
  command <<<
    phylophlan_write_default_configs_sh \
      ~{mkdir} \
      ~{directory_dot_dot_dot} \
      ~{if defined(mode) then ("-m " +  '"' + mode + '"') else ""} \
      ~{if (error_exists_make) then "-p" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mode: "Mode"
    error_exists_make: "No error if exists; make parent directories as needed"
    mkdir: ""
    directory_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}