version 1.0

task ChopUpBackgroundpl {
  input {
    File target_seq_file
    File background_seq_file
  }
  command <<<
    chopUpBackground_pl \
      ~{target_seq_file} \
      ~{background_seq_file}
  >>>
  parameter_meta {
    target_seq_file: ""
    background_seq_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}