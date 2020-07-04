version 1.0

task Fastahack {
  input {
    Boolean? index
    String? region
    Boolean? stdin
    Boolean? entropy
    Boolean? dump
    String fast_a_reference
  }
  command <<<
    fastahack \
      ~{fast_a_reference} \
      ~{true="--index" false="" index} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{true="--stdin" false="" stdin} \
      ~{true="--entropy" false="" entropy} \
      ~{true="--dump" false="" dump}
  >>>
  parameter_meta {
    index: "generate fasta index <fasta reference>.fai"
    region: "print the specified region"
    stdin: "read a stream of line-delimited region specifiers on stdin and print the corresponding sequence for each on stdout"
    entropy: "print the shannon entropy of the specified region"
    dump: "print the fasta file in the form 'seq_name <tab> sequence'"
    fast_a_reference: ""
  }
}