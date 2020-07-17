version 1.0

task Prosolo {
  input {
    Boolean? provide_verbose_output
  }
  command <<<
    prosolo \
      ~{true="-v" false="" provide_verbose_output}
  >>>
  parameter_meta {
    provide_verbose_output: "Provide verbose output."
  }
}