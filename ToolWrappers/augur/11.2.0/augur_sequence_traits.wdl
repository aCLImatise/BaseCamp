version 1.0

task AugurSequencetraits {
  input {
    String? ancestral_sequences
    String? translations
    File? vcf_reference
    File? vcf_translate_reference
    File? features
    String? count
    String? label
    File? output_node_data
  }
  command <<<
    augur sequence_traits \
      ~{if defined(ancestral_sequences) then ("--ancestral-sequences " +  '"' + ancestral_sequences + '"') else ""} \
      ~{if defined(translations) then ("--translations " +  '"' + translations + '"') else ""} \
      ~{if defined(vcf_reference) then ("--vcf-reference " +  '"' + vcf_reference + '"') else ""} \
      ~{if defined(vcf_translate_reference) then ("--vcf-translate-reference " +  '"' + vcf_translate_reference + '"') else ""} \
      ~{if defined(features) then ("--features " +  '"' + features + '"') else ""} \
      ~{if defined(count) then ("--count " +  '"' + count + '"') else ""} \
      ~{if defined(label) then ("--label " +  '"' + label + '"') else ""} \
      ~{if defined(output_node_data) then ("--output-node-data " +  '"' + output_node_data + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/augur:11.2.0--py_0"
  }
  parameter_meta {
    ancestral_sequences: "nucleotide alignment (VCF) to search for sequence\\ntraits in (can be generated from 'ancestral' using '--\\noutput-vcf') (default: None)"
    translations: "AA alignment to search for sequence traits in (can\\ninclude ancestral sequences) (default: None)"
    vcf_reference: "fasta file of the sequence the nucleotide VCF was\\nmapped to (default: None)"
    vcf_translate_reference: "fasta file of the sequence the translated VCF was\\nmapped to (default: None)"
    features: "file that specifies sites defining the features in a\\ntab-delimited format: \\\"GENE SITE ALT DISPLAY_NAME\\nFEATURE\\\". For nucleotide sites, GENE can be \\\"nuc\\\" (or\\ncolumn excluded entirely for all-nuc sites).\\n\\\"DISPLAY_NAME\\\" can be blank or excluded entirely.\\n(default: None)"
    count: "Whether to count traits (ex: # drugs resistant to) or\\nmutations (default: traits)"
    label: "How to label the counts (ex: Drug_Resistance)\\n(default: # Traits)"
    output_node_data: "name of JSON file to save sequence features to\\n(default: None)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}