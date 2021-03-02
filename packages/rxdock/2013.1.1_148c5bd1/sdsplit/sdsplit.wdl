version 1.0

task Sdsplit {
  input {
    Boolean? outputroot_root_name
  }
  command <<<
    sdsplit \
      ~{if (outputroot_root_name) then "-o" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outputroot_root_name: "<OutputRoot>  Root name for output files (default = tmp)"
  }
  output {
    File out_stdout = stdout()
  }
}