version 1.0

task AffiliationPostprocesspy {
  input {
    Int? identity
    Int? coverage
    Boolean? taxon_list_ignore
    Boolean? debug
    String? input_biom
    File? input_fast_a
    File? reference
    File? output_biom
    String? output_compo
    File? output_fast_a
    File? log_file
  }
  command <<<
    affiliation_postprocess_py \
      ~{if defined(identity) then ("--identity " +  '"' + identity + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if (taxon_list_ignore) then "-t" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(input_biom) then ("--input-biom " +  '"' + input_biom + '"') else ""} \
      ~{if defined(input_fast_a) then ("--input-fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(output_biom) then ("--output-biom " +  '"' + output_biom + '"') else ""} \
      ~{if defined(output_compo) then ("--output-compo " +  '"' + output_compo + '"') else ""} \
      ~{if defined(output_fast_a) then ("--output-fasta " +  '"' + output_fast_a + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/frogs:3.2.0--py37_0"
  }
  parameter_meta {
    identity: "Min percentage identity to agggregate OTU. [Default:\\n99.0]"
    coverage: "Min percentage coverage to agggregate OTU. [Default:\\n99.0]"
    taxon_list_ignore: "[TAXON_IGNORED [TAXON_IGNORED ...]], --taxon-ignored [TAXON_IGNORED [TAXON_IGNORED ...]]\\nTaxon list to ignore when OTUs agggregation"
    debug: "Keep temporary files to debug program."
    input_biom: "Abundance table with affiliations metadata from the\\naffiliation_OTU program (format: BIOM)."
    input_fast_a: "OTU seed sequence file (format: FASTA)."
    reference: "amplicon reference file, to resolve inclusive amplicon\\naffiliations (format: FASTA)"
    output_biom: "BIOM file whith refind affiliation annotations.\\n(format: BIOM) [Default:\\naffiliation_postprocess_abundance.biom]"
    output_compo: "Aggregated OTU composition (format: TSV) [Default:\\naffiliation_postprocess_otu_composition.tsv]"
    output_fast_a: "Updated OTU FASTA file (format: FASTA) [Default:\\naffiliation_postprocess_OTU.fasta]"
    log_file: "The list of commands executed."
  }
  output {
    File out_stdout = stdout()
  }
}