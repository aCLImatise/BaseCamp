version 1.0

task AffiliationOTUpy {
  input {
    Int? nb_cpus
    Int? java_mem
    Boolean? ordered_ranks_levels
    Boolean? rdp
    Boolean? debug
    File? reference
    String? input_biom
    File? input_fast_a
    File? output_biom
    String? summary
    File? log_file
  }
  command <<<
    affiliation_OTU_py \
      ~{if defined(nb_cpus) then ("--nb-cpus " +  '"' + nb_cpus + '"') else ""} \
      ~{if defined(java_mem) then ("--java-mem " +  '"' + java_mem + '"') else ""} \
      ~{if (ordered_ranks_levels) then "-t" else ""} \
      ~{if (rdp) then "--rdp" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(input_biom) then ("--input-biom " +  '"' + input_biom + '"') else ""} \
      ~{if defined(input_fast_a) then ("--input-fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(output_biom) then ("--output-biom " +  '"' + output_biom + '"') else ""} \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    nb_cpus: "The maximum number of CPUs used. [Default: 1]"
    java_mem: "Java memory allocation in Go. [Default: 2]"
    ordered_ranks_levels: "[TAXONOMY_RANKS [TAXONOMY_RANKS ...]], --taxonomy-ranks [TAXONOMY_RANKS [TAXONOMY_RANKS ...]]\\nThe ordered ranks levels present in the reference\\ndatabank. [Default: ['Domain', 'Phylum', 'Class',\\n'Order', 'Family', 'Genus', 'Species']]"
    rdp: "Use RDP classifier to affiliate OTU"
    debug: "Keep temporary files to debug program."
    reference: "Preformated reference file."
    input_biom: "Abundance table from the clusterisation program\\n(format: BIOM)."
    input_fast_a: "Fasta file of OTU's seed (format: fasta)."
    output_biom: "File which add affiliation annotations from\\nblast/needleall and/or RDPtools to the abundance\\ntable. [Default: affiliation.biom]"
    summary: "Report of the results (format: HTML). [Default:\\nsummary.html]"
    log_file: "The list of commands executed.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}