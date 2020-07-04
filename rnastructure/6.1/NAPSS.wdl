version 1.0

task NAPSS {
  input {
    String seq_file
    String nmr_file
    String ct_file
  }
  command <<<
    NAPSS \
      ~{seq_file} \
      ~{nmr_file} \
      ~{ct_file}
  >>>
  parameter_meta {
    seq_file: ""
    nmr_file: ""
    ct_file: ""
  }
}