version 1.0

task ChopUpPeakFilepl {
  input {
    File target_peak_file
    File background_peak_file
  }
  command <<<
    chopUpPeakFile_pl \
      ~{target_peak_file} \
      ~{background_peak_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    target_peak_file: ""
    background_peak_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}