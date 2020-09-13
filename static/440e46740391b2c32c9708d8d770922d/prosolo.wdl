version 1.0

task Prosolo {
  input {
    Boolean? provide_verbose_output
  }
  command <<<
    prosolo \
      ~{if (provide_verbose_output) then "-v" else ""}
  >>>
  parameter_meta {
    provide_verbose_output: "Provide verbose output."
  }
  output {
    File out_stdout = stdout()
  }
}