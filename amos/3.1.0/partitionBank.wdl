version 1.0

task PartitionBank {
  input {
    Boolean? b
    String partition_bank
    String? an_k
    String bank_name
  }
  command <<<
    partitionBank \
      ~{partition_bank} \
      ~{an_k} \
      ~{bank_name} \
      ~{true="-b" false="" b}
  >>>
  parameter_meta {
    b: ""
    partition_bank: ""
    an_k: ""
    bank_name: ""
  }
}