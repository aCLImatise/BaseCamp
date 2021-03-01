version 1.0

task AffiliationPostprocesspy {
  input {
    String? b
    Int? identity
    Int? coverage
    Boolean? debug
    String? input_biom
    File? input_fast_a
    File? reference
    File? output_biom
    String? output_compo
    File? output_fast_a
    File? log_file
    Boolean? v
  }
  command <<<
    affiliation_postprocess_py \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(identity) then ("--identity " +  '"' + identity + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(input_biom) then ("--input-biom " +  '"' + input_biom + '"') else ""} \
      ~{if defined(input_fast_a) then ("--input-fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(output_biom) then ("--output-biom " +  '"' + output_biom + '"') else ""} \
      ~{if defined(output_compo) then ("--output-compo " +  '"' + output_compo + '"') else ""} \
      ~{if defined(output_fast_a) then ("--output-fasta " +  '"' + output_fast_a + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    b: "[-r REFERENCE]"
    identity: "Min percentage identity to agggregate OTU. [Default:\\n99.0]"
    coverage: "Min percentage coverage to agggregate OTU. [Default:\\n99.0]"
    debug: "Keep temporary files to debug program."
    input_biom: "Abundance table with affiliations metadata from the\\naffiliation_OTU program (format: BIOM)."
    input_fast_a: "OTU seed sequence file (format: Fasta)."
    reference: "amplicon reference fasta file, to resolve inclusiv\\namplicon affiliation"
    output_biom: "File whith refind affiliation annotations. [Default:\\nrefined_affiliation.biom]"
    output_compo: "Aggregated OTU composition [Default:\\naggregated_otu_composition.tsv]"
    output_fast_a: "Updated OTU fasta file [Default:\\nrefined_affiliation.fasta]"
    log_file: "The list of commands executed."
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}