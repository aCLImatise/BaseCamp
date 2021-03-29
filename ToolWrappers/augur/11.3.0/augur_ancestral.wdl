version 1.0

task AugurAncestral {
  input {
    String? tree
    String? alignment
    File? output_node_data
    File? output_sequences
    String? inference
    File? vcf_reference
    File? output_vcf
    Boolean? keep_ambiguous
    Boolean? infer_ambiguous
    Boolean? keep_overhangs
  }
  command <<<
    augur ancestral \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(alignment) then ("--alignment " +  '"' + alignment + '"') else ""} \
      ~{if defined(output_node_data) then ("--output-node-data " +  '"' + output_node_data + '"') else ""} \
      ~{if defined(output_sequences) then ("--output-sequences " +  '"' + output_sequences + '"') else ""} \
      ~{if defined(inference) then ("--inference " +  '"' + inference + '"') else ""} \
      ~{if defined(vcf_reference) then ("--vcf-reference " +  '"' + vcf_reference + '"') else ""} \
      ~{if defined(output_vcf) then ("--output-vcf " +  '"' + output_vcf + '"') else ""} \
      ~{if (keep_ambiguous) then "--keep-ambiguous" else ""} \
      ~{if (infer_ambiguous) then "--infer-ambiguous" else ""} \
      ~{if (keep_overhangs) then "--keep-overhangs" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/augur:11.3.0--py_0"
  }
  parameter_meta {
    tree: "prebuilt Newick (default: None)"
    alignment: "alignment in fasta or VCF format (default: None)"
    output_node_data: "name of JSON file to save mutations and ancestral\\nsequences to (default: None)"
    output_sequences: "name of FASTA file to save ancestral sequences to\\n(FASTA alignments only) (default: None)"
    inference: "calculate joint or marginal maximum likelihood\\nancestral sequence states (default: joint)"
    vcf_reference: "fasta file of the sequence the VCF was mapped to\\n(default: None)"
    output_vcf: "name of output VCF file which will include ancestral\\nseqs (default: None)"
    keep_ambiguous: "do not infer nucleotides at ambiguous (N) sites on tip\\nsequences (leave as N). (default: False)"
    infer_ambiguous: "infer nucleotides at ambiguous (N,W,R,..) sites on tip\\nsequences and replace with most likely state.\\n(default: True)"
    keep_overhangs: "do not infer nucleotides for gaps (-) on either side\\nof the alignment (default: False)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_vcf = "${in_output_vcf}"
  }
}