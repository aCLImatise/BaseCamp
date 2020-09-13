version 1.0

task ExtendClearRangesPartition {
  input {
    String? the_gatekeeper_store
    Int? the_checkpoint_use
    String? use_ckpname_checkpoint
    Int? number_partitions_make
    Int? maximum_fragments_partition
    File? partition_information_output
    String? opts
  }
  command <<<
    extendClearRangesPartition \
      ~{opts} \
      ~{if defined(the_gatekeeper_store) then ("-g " +  '"' + the_gatekeeper_store + '"') else ""} \
      ~{if defined(the_checkpoint_use) then ("-n " +  '"' + the_checkpoint_use + '"') else ""} \
      ~{if defined(use_ckpname_checkpoint) then ("-c " +  '"' + use_ckpname_checkpoint + '"') else ""} \
      ~{if defined(number_partitions_make) then ("-N " +  '"' + number_partitions_make + '"') else ""} \
      ~{if defined(maximum_fragments_partition) then ("-M " +  '"' + maximum_fragments_partition + '"') else ""} \
      ~{if defined(partition_information_output) then ("-p " +  '"' + partition_information_output + '"') else ""}
  >>>
  parameter_meta {
    the_gatekeeper_store: "The gatekeeper store"
    the_checkpoint_use: "The checkpoint to use"
    use_ckpname_checkpoint: "Use ckpName as the checkpoint name"
    number_partitions_make: "Number of partitions to make"
    maximum_fragments_partition: "Maximum fragments per partition"
    partition_information_output: "Partition information output file"
    opts: ""
  }
  output {
    File out_stdout = stdout()
    File out_partition_information_output = "${in_partition_information_output}"
  }
}