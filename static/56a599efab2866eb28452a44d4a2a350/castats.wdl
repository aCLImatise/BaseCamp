version 1.0

task Castats {
  input {
    Boolean? min_qual
    Int? min_contig
    Int? genome_size_used
    String prefix_dot_asm
  }
  command <<<
    castats \
      ~{prefix_dot_asm} \
      ~{if (min_qual) then "-minqual" else ""} \
      ~{if defined(min_contig) then ("-mincontig " +  '"' + min_contig + '"') else ""} \
      ~{if defined(genome_size_used) then ("-g " +  '"' + genome_size_used + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    min_qual: "<n>   Minimum quality value threshhold to report as bad\\nquality (default 20)"
    min_contig: "Minimum contig size to report as a big contig\\n(default 10000)"
    genome_size_used: "Genome size used in the calculation of N50 numbers\\n(default: TotalBasesInContigs)"
    prefix_dot_asm: "The Celera .asm file"
  }
  output {
    File out_stdout = stdout()
  }
}