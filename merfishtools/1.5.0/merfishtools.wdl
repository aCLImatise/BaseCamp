version 1.0

task Merfishtools {
  input {
    Boolean? provide_verbose_output
  }
  command <<<
    merfishtools \
      ~{true="-v" false="" provide_verbose_output}
  >>>
  parameter_meta {
    provide_verbose_output: "Provide verbose output."
  }
}