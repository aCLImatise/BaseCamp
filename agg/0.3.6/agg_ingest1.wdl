version 1.0

task AggIngest1 {
  input {
    String? agg_will_output
    File? fast_a_ref
    Boolean? ignore_non_matching_ref
    String input_gvc_f
  }
  command <<<
    agg ingest1 \
      ~{input_gvc_f} \
      ~{if defined(agg_will_output) then ("--output " +  '"' + agg_will_output + '"') else ""} \
      ~{if defined(fast_a_ref) then ("--fasta-ref " +  '"' + fast_a_ref + '"') else ""} \
      ~{true="--ignore-non-matching-ref" false="" ignore_non_matching_ref}
  >>>
  parameter_meta {
    agg_will_output: "agg will output output_prefix.bcf and output_prefix.tmp"
    fast_a_ref: "reference sequence"
    ignore_non_matching_ref: "skip non-matching ref alleles (will warn)"
    input_gvc_f: ""
  }
}