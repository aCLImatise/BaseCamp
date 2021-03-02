version 1.0

task AffiliationsStatpy {
  input {
    Boolean? debug
    Boolean? taxonomic_ranks
    Boolean? rarefaction_ranks
    File? multiple_tag
    File? tax_consensus_tag
    File? taxonomy_tag
    File? bootstrap_tag
    File? identity_tag
    File? coverage_tag
    File? input_biom
    File? output_file
    File? log_file
    Boolean? v
  }
  command <<<
    affiliations_stat_py \
      ~{if (debug) then "--debug" else ""} \
      ~{if (taxonomic_ranks) then "--taxonomic-ranks" else ""} \
      ~{if (rarefaction_ranks) then "--rarefaction-ranks" else ""} \
      ~{if defined(multiple_tag) then ("--multiple-tag " +  '"' + multiple_tag + '"') else ""} \
      ~{if defined(tax_consensus_tag) then ("--tax-consensus-tag " +  '"' + tax_consensus_tag + '"') else ""} \
      ~{if defined(taxonomy_tag) then ("--taxonomy-tag " +  '"' + taxonomy_tag + '"') else ""} \
      ~{if defined(bootstrap_tag) then ("--bootstrap-tag " +  '"' + bootstrap_tag + '"') else ""} \
      ~{if defined(identity_tag) then ("--identity-tag " +  '"' + identity_tag + '"') else ""} \
      ~{if defined(coverage_tag) then ("--coverage-tag " +  '"' + coverage_tag + '"') else ""} \
      ~{if defined(input_biom) then ("--input-biom " +  '"' + input_biom + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    debug: "Keep temporary files to debug program."
    taxonomic_ranks: "[TAXONOMIC_RANKS [TAXONOMIC_RANKS ...]]\\nThe ordered ranks levels used in the metadata\\ntaxonomy. [Default: ['Domain', 'Phylum', 'Class',\\n'Order', 'Family', 'Genus', 'Species']]"
    rarefaction_ranks: "[RAREFACTION_RANKS [RAREFACTION_RANKS ...]]\\nThe ranks that will be evaluated in rarefaction.\\n[Default: ['Genus']]"
    multiple_tag: "The metadata tag used in BIOM file to store the list\\nof possible taxonomies. Use this parameter if the\\ntaxonomic affiliation has been processed by a software\\nthat adds several affiliation in the BIOM file\\n(example: same score ambiguity)."
    tax_consensus_tag: "The metadata tag used in BIOM file to store the\\nconsensus taxonomy. This parameter is used instead\\n\\\"--taxonomy-tag\\\" when you have several affiliations\\nfor each OTU."
    taxonomy_tag: "The metadata tag used in BIOM file to store the\\ntaxonomy. Use this parameter if the taxonomic\\naffiliation has been processed by a software that adds\\nonly one affiliation or if you does not have a\\nmetadata with the consensus taxonomy (see \\\"--tax-\\nconsensus-tag\\\")."
    bootstrap_tag: "The metadata tag used in BIOM file to store the\\ntaxonomy bootstraps."
    identity_tag: "The metadata tag used in BIOM file to store the\\nalignment identity."
    coverage_tag: "The metadata tag used in BIOM file to store the\\nalignment observation coverage."
    input_biom: "The input abundance file (format: BIOM)."
    output_file: "The output report (format: HTML). [Default:\\naffiliations_metrics.html]"
    log_file: "The list of commands executed.\\n"
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}