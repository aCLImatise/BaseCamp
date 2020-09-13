version 1.0

task Merfishtools {
  input {
    Boolean? provide_verbose_output
  }
  command <<<
    merfishtools \
      ~{if (provide_verbose_output) then "-v" else ""}
  >>>
  parameter_meta {
    provide_verbose_output: "Provide verbose output."
  }
  output {
    File out_stdout = stdout()
  }
}