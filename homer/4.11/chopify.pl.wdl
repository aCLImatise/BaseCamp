version 1.0

task Chopifypl {
  input {
    File peak_slash_bed_file
  }
  command <<<
    chopify_pl \
      ~{peak_slash_bed_file}
  >>>
  parameter_meta {
    peak_slash_bed_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}