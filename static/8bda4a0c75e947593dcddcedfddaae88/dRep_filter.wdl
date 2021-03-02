version 1.0

task DRepFilter {
  input {
    Int? processors
    Boolean? debug
    Int? length
    Int? completeness
    Int? contamination
    Boolean? ignore_genome_quality
    Boolean? genomes_filter_ifbdb
    File? genome_info
    String? check_m_method
    Int? set_recursion
  }
  command <<<
    dRep filter \
      ~{if defined(processors) then ("--processors " +  '"' + processors + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(completeness) then ("--completeness " +  '"' + completeness + '"') else ""} \
      ~{if defined(contamination) then ("--contamination " +  '"' + contamination + '"') else ""} \
      ~{if (ignore_genome_quality) then "--ignoreGenomeQuality" else ""} \
      ~{if (genomes_filter_ifbdb) then "-g" else ""} \
      ~{if defined(genome_info) then ("--genomeInfo " +  '"' + genome_info + '"') else ""} \
      ~{if defined(check_m_method) then ("--checkM_method " +  '"' + check_m_method + '"') else ""} \
      ~{if defined(set_recursion) then ("--set_recursion " +  '"' + set_recursion + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    processors: "threads (default: 6)"
    debug: "make extra debugging output (default: False)"
    length: "Minimum genome length (default: 50000)"
    completeness: "Minumum genome completeness (default: 75)"
    contamination: "Maximum genome contamination (default: 25)"
    ignore_genome_quality: "Don't run checkM or do any quality filtering. NOT\\nRECOMMENDED! This is useful for use with\\nbacteriophages or eukaryotes or things where checkM\\nscoring does not work. Will only choose genomes based\\non length and N50 (default: False)"
    genomes_filter_ifbdb: "[GENOMES [GENOMES ...]], --genomes [GENOMES [GENOMES ...]]\\ngenomes to filter in .fasta format. Not necessary if\\nBdb or Wdb already exist (default: None)"
    genome_info: "location of .csv file containing quality information\\non the genomes. Must contain: [\\\"genome\\\"(basename of\\n.fasta file of that genome), \\\"completeness\\\"(0-100\\nvalue for completeness of the genome),\\n\\\"contamination\\\"(0-100 value of the contamination of\\nthe genome)] (default: None)"
    check_m_method: "Either lineage_wf (more accurate) or taxonomy_wf\\n(faster) (default: lineage_wf)"
    set_recursion: "Increases the python recursion limit. NOT RECOMMENDED\\nunless checkM is crashing due to recursion issues.\\nRecommended to set to 2000 if needed, but setting this\\ncould crash python (default: 0)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}