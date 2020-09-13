version 1.0

task LynerFilterValue {
  input {
    String lyne_r
    Int command_one
    String? args
  }
  command <<<
    lyner filter value_ \
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