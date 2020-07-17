version 1.0

task Bipartition {
  input {
    String seq_file_one
    String seq_file_two
    String pfs_file
  }
  command <<<
    bipartition \
      ~{seq_file_one} \
      ~{seq_file_two} \
      ~{pfs_file}
  >>>
  parameter_meta {
    seq_file_one: ""
    seq_file_two: ""
    pfs_file: ""
  }
}