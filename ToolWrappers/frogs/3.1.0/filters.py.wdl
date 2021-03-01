version 1.0

task Filterspy {
  input {
    Int? nb_cpus
    Int? nb_biggest_otu
    Int? min_sample_presence
    Int? min_abundance
    Int? minbootstrap__minrdpbootstrap
    Boolean? ordered_ranks_levels
    Int? min_blast_identity
    Int? min_blast_coverage
    Int? max_blast_evalue
    Int? min_blast_length
    File? input_biom
    File? input_fast_a
    String? contaminant
    File? output_biom
    File? output_fast_a
    File? summary
    File? excluded
    File? log_file
    Boolean? v
  }
  command <<<
    filters_py \
      ~{if defined(nb_cpus) then ("--nb-cpus " +  '"' + nb_cpus + '"') else ""} \
      ~{if defined(nb_biggest_otu) then ("--nb-biggest-otu " +  '"' + nb_biggest_otu + '"') else ""} \
      ~{if defined(min_sample_presence) then ("--min-sample-presence " +  '"' + min_sample_presence + '"') else ""} \
      ~{if defined(min_abundance) then ("--min-abundance " +  '"' + min_abundance + '"') else ""} \
      ~{if defined(minbootstrap__minrdpbootstrap) then ("-b " +  '"' + minbootstrap__minrdpbootstrap + '"') else ""} \
      ~{if (ordered_ranks_levels) then "-t" else ""} \
      ~{if defined(min_blast_identity) then ("--min-blast-identity " +  '"' + min_blast_identity + '"') else ""} \
      ~{if defined(min_blast_coverage) then ("--min-blast-coverage " +  '"' + min_blast_coverage + '"') else ""} \
      ~{if defined(max_blast_evalue) then ("--max-blast-evalue " +  '"' + max_blast_evalue + '"') else ""} \
      ~{if defined(min_blast_length) then ("--min-blast-length " +  '"' + min_blast_length + '"') else ""} \
      ~{if defined(input_biom) then ("--input-biom " +  '"' + input_biom + '"') else ""} \
      ~{if defined(input_fast_a) then ("--input-fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(contaminant) then ("--contaminant " +  '"' + contaminant + '"') else ""} \
      ~{if defined(output_biom) then ("--output-biom " +  '"' + output_biom + '"') else ""} \
      ~{if defined(output_fast_a) then ("--output-fasta " +  '"' + output_fast_a + '"') else ""} \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""} \
      ~{if defined(excluded) then ("--excluded " +  '"' + excluded + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    nb_cpus: "The maximum number of CPUs used. [Default: 1]"
    nb_biggest_otu: "Number of most abundant OTUs you want to keep."
    min_sample_presence: "Keep OTU present in at least this number of samples."
    min_abundance: "Minimum percentage/number of sequences, comparing to\\nthe total number of sequences, of an OTU (between 0\\nand 1 if percentage desired)."
    minbootstrap__minrdpbootstrap: ":MIN_BOOTSTRAP, --min-rdp-bootstrap TAXONOMIC_LEVEL:MIN_BOOTSTRAP\\nThe minimal RDP bootstrap must be superior to this\\nvalue (between 0 and 1)."
    ordered_ranks_levels: "[RDP_TAXONOMY_RANKS [RDP_TAXONOMY_RANKS ...]], --rdp-taxonomy-ranks [RDP_TAXONOMY_RANKS [RDP_TAXONOMY_RANKS ...]]\\nThe ordered ranks levels present in the reference\\ndatabank. [Default: ['Domain', 'Phylum', 'Class',\\n'Order', 'Family', 'Genus', 'Species']]"
    min_blast_identity: "The number corresponding to the blast percentage\\nidentity (between 0 and 1)."
    min_blast_coverage: "The number corresponding to the blast percentage\\ncoverage (between 0 and 1)."
    max_blast_evalue: "The number corresponding to the blast e value (between\\n0 and 1)."
    min_blast_length: "The number corresponding to the blast length."
    input_biom: "The input biom file."
    input_fast_a: "The input fasta file."
    contaminant: "Use this databank to filter sequence before\\naffiliation."
    output_biom: "The Biom file output. [Default: filtered.biom]"
    output_fast_a: "The fasta output file. [Default: filtered.fasta]"
    summary: "The HTML file containing the graphs. [Default:\\nsummary.html]"
    excluded: "The file that summarizes all the clusters discarded.\\n[Default: excluded.tsv]"
    log_file: "The list of commands executed."
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_biom = "${in_output_biom}"
    File out_output_fast_a = "${in_output_fast_a}"
  }
}