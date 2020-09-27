version 1.0

task GeneReadCountPerGenomepy {
  input {
    Int? max_n_processors
    String gene_file
    String re_ffa
    String bam_files
  }
  command <<<
    gene_read_count_per_genome_py \
      ~{gene_file} \
      ~{re_ffa} \
      ~{bam_files} \
      ~{if defined(max_n_processors) then ("--max_n_processors " +  '"' + max_n_processors + '"') else ""}
  >>>
  parameter_meta {
    max_n_processors: "Specify the maximum number of processors to use, if\\nabsent, all present processors will be used.\\n"
    gene_file: "gene positions"
    re_ffa: "Reference fasta file"
    bam_files: "BAM files with mappings to contigs"
  }
  output {
    File out_stdout = stdout()
  }
}