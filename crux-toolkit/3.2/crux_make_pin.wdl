version 1.0

task CruxMakePin {
  input {
    String target_input
  }
  command <<<
    crux make-pin \
      ~{target_input}
  >>>
  parameter_meta {
    target_input: ""
  }
}