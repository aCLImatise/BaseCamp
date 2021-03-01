version 1.0

task AffiliationFilterspy {
  input {
    Boolean? debug
    Array[String] taxonomic_ranks
    Boolean? mask
    Boolean? delete
    Boolean? ignore_blast_tax_a
    Int? minbootstrap__minrdpbootstrap
    Boolean? ordered_ranks_levels_present
    Int? min_blast_identity
    Int? min_blast_coverage
    Int? max_blast_evalue
    Int? min_blast_length
    File? input_biom
    File? input_fast_a
    File? output_biom
    File? output_fast_a
    File? summary
    File? impacted
    File? impacted_multihit
    File? log_file
    Boolean? v
  }
  command <<<
    affiliation_filters_py \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(taxonomic_ranks) then ("--taxonomic-ranks " +  '"' + taxonomic_ranks + '"') else ""} \
      ~{if (mask) then "--mask" else ""} \
      ~{if (delete) then "--delete" else ""} \
      ~{if (ignore_blast_tax_a) then "--ignore-blast-taxa" else ""} \
      ~{if defined(minbootstrap__minrdpbootstrap) then ("-b " +  '"' + minbootstrap__minrdpbootstrap + '"') else ""} \
      ~{if (ordered_ranks_levels_present) then "-t" else ""} \
      ~{if defined(min_blast_identity) then ("--min-blast-identity " +  '"' + min_blast_identity + '"') else ""} \
      ~{if defined(min_blast_coverage) then ("--min-blast-coverage " +  '"' + min_blast_coverage + '"') else ""} \
      ~{if defined(max_blast_evalue) then ("--max-blast-evalue " +  '"' + max_blast_evalue + '"') else ""} \
      ~{if defined(min_blast_length) then ("--min-blast-length " +  '"' + min_blast_length + '"') else ""} \
      ~{if defined(input_biom) then ("--input-biom " +  '"' + input_biom + '"') else ""} \
      ~{if defined(input_fast_a) then ("--input-fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(output_biom) then ("--output-biom " +  '"' + output_biom + '"') else ""} \
      ~{if defined(output_fast_a) then ("--output-fasta " +  '"' + output_fast_a + '"') else ""} \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""} \
      ~{if defined(impacted) then ("--impacted " +  '"' + impacted + '"') else ""} \
      ~{if defined(impacted_multihit) then ("--impacted-multihit " +  '"' + impacted_multihit + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/frogs:3.2.0--py37_0"
  }
  parameter_meta {
    debug: "Keep temporary files to debug program."
    taxonomic_ranks: "The ordered ranks levels used in the metadata\\ntaxonomy. [Default: ['Domain', 'Phylum', 'Class',\\n'Order', 'Family', 'Genus', 'Species']]"
    mask: "If affiliations do not respect one of the filter they\\nare replaced by NA (mutually exclusive with --delete)"
    delete: "If affiliations do not respect one of the filter the\\nentire OTU is deleted.(mutually exclusive with --mask)"
    ignore_blast_tax_a: "[IGNORE_BLAST_TAXA [IGNORE_BLAST_TAXA ...]]\\nTaxon list to maks/delete in Blast affiliations"
    minbootstrap__minrdpbootstrap: ":MIN_BOOTSTRAP, --min-rdp-bootstrap TAXONOMIC_LEVEL:MIN_BOOTSTRAP\\nThe minimal RDP bootstrap must be superior to this\\nvalue (between 0 and 1)."
    ordered_ranks_levels_present: "[RDP_TAXONOMY_RANKS [RDP_TAXONOMY_RANKS ...]], --rdp-taxonomy-ranks [RDP_TAXONOMY_RANKS [RDP_TAXONOMY_RANKS ...]]\\nThe ordered ranks levels present in the reference\\ndatabank. [Default: ['Domain', 'Phylum', 'Class',\\n'Order', 'Family', 'Genus', 'Species']]"
    min_blast_identity: "The number corresponding to the blast percentage\\nidentity (between 0 and 1)."
    min_blast_coverage: "The number corresponding to the blast percentage\\ncoverage (between 0 and 1)."
    max_blast_evalue: "The number corresponding to the blast e value (between\\n0 and 1)."
    min_blast_length: "The number corresponding to the blast length."
    input_biom: "The input biom file."
    input_fast_a: "The input fasta file."
    output_biom: "The Biom file output. [Default: affiliation-\\nfiltered.biom]"
    output_fast_a: "The fasta output file. [Default: affiliation-\\nfiltered.fasta]"
    summary: "The HTML file containing the graphs. [Default:\\nsummary.html]"
    impacted: "The abundance file that summarizes all the clusters\\nimpacted (deleted or with affiliations masked).\\n[Default: impacted_clusters.tsv]"
    impacted_multihit: "The multihit TSV file associated with impacted OTU.\\n[Default: impacted_clusters_multihit.tsv]"
    log_file: "The list of commands executed."
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_biom = "${in_output_biom}"
    File out_output_fast_a = "${in_output_fast_a}"
  }
}