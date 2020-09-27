version 1.0

task CheckPeakFilepl {
  input {
    File peak_slash_pos_file
  }
  command <<<
    checkPeakFile_pl \
      ~{peak_slash_pos_file}
  >>>
  parameter_meta {
    peak_slash_pos_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}