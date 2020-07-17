version 1.0

task ExtractPartitions.py {
  input {
    Boolean? info
    Int? max_size
    Int? min_partition_size
    Boolean? no_output_groups
    Boolean? output_unassigned
    Boolean? force
    Boolean? gzip
    Boolean? bzip
  }
  command <<<
    extract-partitions.py \
      ~{true="--info" false="" info} \
      ~{if defined(max_size) then ("--max-size " +  '"' + max_size + '"') else ""} \
      ~{if defined(min_partition_size) then ("--min-partition-size " +  '"' + min_partition_size + '"') else ""} \
      ~{true="--no-output-groups" false="" no_output_groups} \
      ~{true="--output-unassigned" false="" output_unassigned} \
      ~{true="--force" false="" force} \
      ~{true="--gzip" false="" gzip} \
      ~{true="--bzip" false="" bzip}
  >>>
  parameter_meta {
    info: "print citation information"
    max_size: "Max group size (n sequences) (default: 1000000)"
    min_partition_size: "Minimum partition size worth keeping (default: 5)"
    no_output_groups: "Do not actually output groups files. (default: True)"
    output_unassigned: "Output unassigned sequences, too (default: False)"
    force: "Overwrite output file if it exists (default: False)"
    gzip: "Compress output using gzip (default: False)"
    bzip: "Compress output using bzip2 (default: False)"
  }
}