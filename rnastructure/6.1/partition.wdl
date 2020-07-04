version 1.0

task Partition {
  input {
    String sequence_file
    String pfs_file
  }
  command <<<
    partition \
      ~{sequence_file} \
      ~{pfs_file}
  >>>
  parameter_meta {
    sequence_file: ""
    pfs_file: ""
  }
}