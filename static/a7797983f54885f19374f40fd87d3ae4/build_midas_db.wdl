version 1.0

task BuildMidasDb.py {
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
    build_midas_db.py \
      ~{in_dir} \
      ~{map_file} \
      ~{outdir} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--compress" false="" compress} \
      ~{if defined(max_species) then ("--max_species " +  '"' + max_species + '"') else ""} \
      ~{if defined(max_genomes) then ("--max_genomes " +  '"' + max_genomes + '"') else ""}
  >>>
  parameter_meta {
    threads: "Number of threads to use (1)"
    compress: "Compress output files with gzip (False)"
    max_species: "Maximum number of species to process from input (use all). Useful for quick tests"
    max_genomes: "Maximum number of genomes to process per species (use all). Useful for quick tests"
    in_dir: "Path to directory of input genomes Each subdirectory should be named according to a genome_id Each subdirectory should contain (replace genome_id): genome_id.fna: Genomic DNA sequence in FASTA format genome_id.ffn: Gene DNA sequences in FASTA format genome_id.faa: Translated genes in FASTA format"
    map_file: "Path to mapping file that specifies which genomes belonging to the same species. The file should be tab-delimited file with a header and 3 fields: genome_id (CHAR): corresponds to subdirectory within INDIR species_id (CHAR): species identifier for genome_id rep_genome (0 or 1): indicator if genome_id should be used for SNP calling"
    outdir: "Directory to store MIDAS database"
  }
}