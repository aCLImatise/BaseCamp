version 1.0

task BipartitionSmp {
  input {
    String bi_partition
    String seq_file_one
    String seq_file_two
    String pfs_file
  }
  command <<<
    bipartition-smp \
      ~{bi_partition} \
      ~{seq_file_one} \
      ~{seq_file_two} \
      ~{pfs_file}
  >>>
  parameter_meta {
    bi_partition: ""
    seq_file_one: ""
    seq_file_two: ""
    pfs_file: ""
  }
}