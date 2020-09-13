version 1.0

task CruxMakepinDecoy_ {
  input {
    String crux
    String make_pin
    String target_input
  }
  command <<<
    crux make_pin decoy__ \
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