version 1.0

task Rsample {
  input {
    String seq_file
    String shape_file
    String pfs_file
  }
  command <<<
    Rsample \
      ~{seq_file} \
      ~{shape_file} \
      ~{pfs_file}
  >>>
  parameter_meta {
    seq_file: ""
    shape_file: ""
    pfs_file: ""
  }
}