version 1.0

task ChopUpBackground.pl {
  input {
    String target_seq_file
    String background_seq_file
  }
  command <<<
    chopUpBackground.pl \
      ~{target_seq_file} \
      ~{background_seq_file}
  >>>
  parameter_meta {
    target_seq_file: ""
    background_seq_file: ""
  }
}