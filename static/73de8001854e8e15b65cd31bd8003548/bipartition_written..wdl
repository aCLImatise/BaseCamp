version 1.0

task BipartitionWritten {
  input {
    String bi_partition
    File seq_file_one
    File seq_file_two
    File pfs_file
  }
  command <<<
    bipartition written_ \
      ~{bi_partition} \
      ~{seq_file_one} \
      ~{seq_file_two} \
      ~{pfs_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bi_partition: ""
    seq_file_one: ""
    seq_file_two: ""
    pfs_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}