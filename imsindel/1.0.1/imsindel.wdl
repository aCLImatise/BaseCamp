version 1.0

task Imsindel {
  input {
    Boolean? output_consensus_seq
    Boolean? exclude_region
  }
  command <<<
    imsindel \
      ~{true="--output-consensus-seq" false="" output_consensus_seq} \
      ~{true="--exclude-region" false="" exclude_region}
  >>>
  parameter_meta {
    output_consensus_seq: "/path/to/output-dir"
    exclude_region: "/path/to/exclude-list"
  }
}