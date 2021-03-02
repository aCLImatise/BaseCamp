version 1.0

task AddFunctionsOrfpy {
  input {
    String? mode
    Boolean? error_exists_make
    String mkdir
    Directory directory_dot_dot_dot
  }
  command <<<
    add_functions_orf_py \
      ~{mkdir} \
      ~{directory_dot_dot_dot} \
      ~{if defined(mode) then ("-m " +  '"' + mode + '"') else ""} \
      ~{if (error_exists_make) then "-p" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/run-dbcan:2.0.11--pyh3252c3a_0"
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