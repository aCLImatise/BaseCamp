version 1.0

task AggIngest1 {
  input {
    String? agg_output_outputprefixbcf
    File? fast_a_ref
    Boolean? ignore_non_matching_ref
    String input_gvc_f
  }
  command <<<
    agg ingest1 \
      ~{input_gvc_f} \
      ~{if defined(agg_output_outputprefixbcf) then ("--output " +  '"' + agg_output_outputprefixbcf + '"') else ""} \
      ~{if defined(fast_a_ref) then ("--fasta-ref " +  '"' + fast_a_ref + '"') else ""} \
      ~{if (ignore_non_matching_ref) then "--ignore-non-matching-ref" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    agg_output_outputprefixbcf: "agg will output output_prefix.bcf and output_prefix.tmp"
    fast_a_ref: "reference sequence"
    ignore_non_matching_ref: "skip non-matching ref alleles (will warn)"
    input_gvc_f: ""
  }
  output {
    File out_stdout = stdout()
  }
}