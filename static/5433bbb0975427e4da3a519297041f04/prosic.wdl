version 1.0

task Prosic {
  input {
    Boolean? provide_verbose_output
  }
  command <<<
    prosic \
      ~{true="-v" false="" provide_verbose_output}
  >>>
  parameter_meta {
    provide_verbose_output: "Provide verbose output."
  }
}