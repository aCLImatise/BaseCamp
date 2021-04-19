version 1.0

task PeakachuCommands {
  input {
    String peak_a_chu
  }
  command <<<
    peakachu commands \
      ~{peak_a_chu}
  >>>
  runtime {
    docker: "quay.io/biocontainers/peakachu:0.2.0--py36hc5360cc_0"
  }
  parameter_meta {
    peak_a_chu: ""
  }
  output {
    File out_stdout = stdout()
  }
}