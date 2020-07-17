version 1.0

task CheckPeakFile.pl {
  input {
    String peak_slash_pos_file
  }
  command <<<
    checkPeakFile.pl \
      ~{peak_slash_pos_file}
  >>>
  parameter_meta {
    peak_slash_pos_file: ""
  }
}