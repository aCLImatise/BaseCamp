version 1.0

task ContigReadCountPerGenomepy {
  input {
    Int? max_n_processors
    String contig_fa
    String re_ffa
    String bam_files
  }
  command <<<
    contig_read_count_per_genome_py \
      ~{contig_fa} \
      ~{re_ffa} \
      ~{bam_files} \
      ~{if defined(max_n_processors) then ("--max_n_processors " +  '"' + max_n_processors + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    max_n_processors: "Specify the maximum number of processors to use, if\\nabsent, all present processors will be used.\\n"
    contig_fa: "Contigs fasta file"
    re_ffa: "Reference fasta file"
    bam_files: "BAM files with mappings to contigs"
  }
  output {
    File out_stdout = stdout()
  }
}