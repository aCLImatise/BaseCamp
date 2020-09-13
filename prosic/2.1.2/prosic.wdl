version 1.0

task Prosic {
  input {
    Boolean? provide_verbose_output
  }
  command <<<
    prosic \
      ~{if (provide_verbose_output) then "-v" else ""}
  >>>
  parameter_meta {
    provide_verbose_output: "Provide verbose output."
  }
  output {
    File out_stdout = stdout()
  }
}