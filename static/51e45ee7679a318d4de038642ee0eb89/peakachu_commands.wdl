version 1.0

task PeakachuCommands {
  input {
    String peak_a_chu
  }
  command <<<
    peakachu commands \
      ~{peak_a_chu}
  >>>
  parameter_meta {
    peak_a_chu: ""
  }
  output {
    File out_stdout = stdout()
  }
}