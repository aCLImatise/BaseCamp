version 1.0

task ChopUpPeakFile.pl {
  input {
    String target_peak_file
    String background_peak_file
  }
  command <<<
    chopUpPeakFile.pl \
      ~{target_peak_file} \
      ~{background_peak_file}
  >>>
  parameter_meta {
    target_peak_file: ""
    background_peak_file: ""
  }
}