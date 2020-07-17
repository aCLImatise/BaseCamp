version 1.0

task Castats {
  input {
    Boolean? min_qual
    String? min_contig
    String? genome_size_used
    String ca_stats
    String prefix_dot_asm
  }
  command <<<
    castats \
      ~{ca_stats} \
      ~{prefix_dot_asm} \
      ~{true="-minqual" false="" min_qual} \
      ~{if defined(min_contig) then ("-mincontig " +  '"' + min_contig + '"') else ""} \
      ~{if defined(genome_size_used) then ("-g " +  '"' + genome_size_used + '"') else ""}
  >>>
  parameter_meta {
    min_qual: "<n>   Minimum quality value threshhold to report as bad quality (default 20)"
    min_contig: "Minimum contig size to report as a big contig (default 10000)"
    genome_size_used: "Genome size used in the calculation of N50 numbers (default: TotalBasesInContigs)"
    ca_stats: "<prefix>.asm  [options]"
    prefix_dot_asm: "The Celera .asm file"
  }
}