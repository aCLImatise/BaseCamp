version 1.0

task BuildMidasDbpy {
  input {
    Int? threads
    Boolean? compress
    Int? max_species
    Int? max_genomes
    String in_dir
    String map_file
    String outdir
  }
  command <<<
    build_midas_db_py \
      ~{in_dir} \
      ~{map_file} \
      ~{outdir} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (compress) then "--compress" else ""} \
      ~{if defined(max_species) then ("--max_species " +  '"' + max_species + '"') else ""} \
      ~{if defined(max_genomes) then ("--max_genomes " +  '"' + max_genomes + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    threads: "Number of threads to use (1)"
    compress: "Compress output files with gzip (False)"
    max_species: "Maximum number of species to process from input (use all).\\nUseful for quick tests"
    max_genomes: "Maximum number of genomes to process per species (use all).\\nUseful for quick tests\\n"
    in_dir: "Path to directory of input genomes\\nEach subdirectory should be named according to a genome_id\\nEach subdirectory should contain (replace genome_id):\\ngenome_id.fna: Genomic DNA sequence in FASTA format\\ngenome_id.ffn: Gene DNA sequences in FASTA format\\ngenome_id.faa: Translated genes in FASTA format"
    map_file: "Path to mapping file that specifies which genomes belonging to the same species.\\nThe file should be tab-delimited file with a header and 3 fields:\\ngenome_id (CHAR): corresponds to subdirectory within INDIR\\nspecies_id (CHAR): species identifier for genome_id\\nrep_genome (0 or 1): indicator if genome_id should be used for SNP calling"
    outdir: "Directory to store MIDAS database"
  }
  output {
    File out_stdout = stdout()
  }
}