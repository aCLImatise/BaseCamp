version 1.0

task Weedamb {
  input {
    String seq_file_in
  }
  command <<<
    weedamb \
      ~{seq_file_in}
  >>>
  parameter_meta {
    seq_file_in: ""
  }
}