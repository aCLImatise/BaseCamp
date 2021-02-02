version 1.0

task DRepChoose {
  input {
    Int? processors
    Boolean? debug
    Int? completeness_weight
    Int? contamination_weight
    Int? strain_heterogeneity_weight
    Int? n_five_zero_weight
    Int? size_weight
    String? check_m_method
    File? genome_info
    Boolean? ignore_genome_quality
  }
  command <<<
    dRep choose \
      ~{if defined(processors) then ("--processors " +  '"' + processors + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(completeness_weight) then ("--completeness_weight " +  '"' + completeness_weight + '"') else ""} \
      ~{if defined(contamination_weight) then ("--contamination_weight " +  '"' + contamination_weight + '"') else ""} \
      ~{if defined(strain_heterogeneity_weight) then ("--strain_heterogeneity_weight " +  '"' + strain_heterogeneity_weight + '"') else ""} \
      ~{if defined(n_five_zero_weight) then ("--N50_weight " +  '"' + n_five_zero_weight + '"') else ""} \
      ~{if defined(size_weight) then ("--size_weight " +  '"' + size_weight + '"') else ""} \
      ~{if defined(check_m_method) then ("--checkM_method " +  '"' + check_m_method + '"') else ""} \
      ~{if defined(genome_info) then ("--genomeInfo " +  '"' + genome_info + '"') else ""} \
      ~{if (ignore_genome_quality) then "--ignoreGenomeQuality" else ""}
  >>>
  parameter_meta {
    processors: "threads (default: 6)"
    debug: "make extra debugging output (default: False)"
    completeness_weight: "completeness weight (default: 1)"
    contamination_weight: "contamination weight (default: 5)"
    strain_heterogeneity_weight: "strain heterogeneity weight (default: 1)"
    n_five_zero_weight: "weight of log(genome N50) (default: 0.5)"
    size_weight: "weight of log(genome size) (default: 0)"
    check_m_method: "Either lineage_wf (more accurate) or taxonomy_wf\\n(faster) (default: lineage_wf)"
    genome_info: "location of .csv file containing quality information\\non the genomes. Must contain: [\\\"genome\\\"(basename of\\n.fasta file of that genome), \\\"completeness\\\"(0-100\\nvalue for completeness of the genome),\\n\\\"contamination\\\"(0-100 value of the contamination of\\nthe genome)] (default: None)"
    ignore_genome_quality: "Don't run checkM or do any quality filtering. NOT\\nRECOMMENDED! This is useful for use with\\nbacteriophages or eukaryotes or things where checkM\\nscoring does not work. Will only choose genomes based\\non length and N50 (default: False)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}