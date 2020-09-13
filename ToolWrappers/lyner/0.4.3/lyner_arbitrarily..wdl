version 1.0

task LynerArbitrarily {
  input {
    String lyne_r
    Int command_one
    String? args
  }
  command <<<
    lyner arbitrarily_ \
      ~{lyne_r} \
      ~{command_one} \
      ~{args}
  >>>
  parameter_meta {
    lyne_r: ""
    command_one: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}