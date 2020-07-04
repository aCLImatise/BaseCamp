version 1.0

task PartitionSmp {
  input {
    String partition
    String sequence_file
    String pfs_file
  }
  command <<<
    partition-smp \
      ~{partition} \
      ~{sequence_file} \
      ~{pfs_file}
  >>>
  parameter_meta {
    partition: ""
    sequence_file: ""
    pfs_file: ""
  }
}