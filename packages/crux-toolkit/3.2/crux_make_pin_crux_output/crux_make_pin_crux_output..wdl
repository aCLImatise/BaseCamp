version 1.0

task CruxMakepinCruxoutput {
  input {
    String crux
    String make_pin
    String target_input
  }
  command <<<
    crux make_pin crux_output_ \
      ~{crux} \
      ~{make_pin} \
      ~{target_input}
  >>>
  parameter_meta {
    crux: ""
    make_pin: ""
    target_input: ""
  }
  output {
    File out_stdout = stdout()
  }
}