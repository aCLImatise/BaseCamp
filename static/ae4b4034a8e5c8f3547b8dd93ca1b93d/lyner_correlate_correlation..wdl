version 1.0

task LynerCorrelateCorrelation {
  input {
    String lyne_r
    Int command_one
    String? args
  }
  command <<<
    lyner correlate correlation_ \
      ~{lyne_r} \
      ~{command_one} \
      ~{args}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    lyne_r: ""
    command_one: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}