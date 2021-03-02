version 1.0

task HaystacDatabase {
  input {
    String? mode
    File? path_database_output
    String? query
    File? query_file
    File? sequences_file
    String? refseq_rep
    Boolean? force_accessions
    String? exclude_accessions
    Boolean? resolve_accessions
    Float? bowtie_two_scaling
    String? rank
    String? genera
    Boolean? mtdna
    Int? seed
    Int? cores
    Int? mem
    Directory? unlock
    Boolean? debug
    Boolean? snake_make
    String language_dot
  }
  command <<<
    haystac database \
      ~{language_dot} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(path_database_output) then ("--output " +  '"' + path_database_output + '"') else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(query_file) then ("--query-file " +  '"' + query_file + '"') else ""} \
      ~{if defined(sequences_file) then ("--sequences-file " +  '"' + sequences_file + '"') else ""} \
      ~{if defined(refseq_rep) then ("--refseq-rep " +  '"' + refseq_rep + '"') else ""} \
      ~{if (force_accessions) then "--force-accessions" else ""} \
      ~{if defined(exclude_accessions) then ("--exclude-accessions " +  '"' + exclude_accessions + '"') else ""} \
      ~{if (resolve_accessions) then "--resolve-accessions" else ""} \
      ~{if defined(bowtie_two_scaling) then ("--bowtie2-scaling " +  '"' + bowtie_two_scaling + '"') else ""} \
      ~{if defined(rank) then ("--rank " +  '"' + rank + '"') else ""} \
      ~{if defined(genera) then ("--genera " +  '"' + genera + '"') else ""} \
      ~{if (mtdna) then "--mtDNA" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(mem) then ("--mem " +  '"' + mem + '"') else ""} \
      ~{if (unlock) then "--unlock" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (snake_make) then "--snakemake" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/haystac:0.3.2--py36_0"
  }
  parameter_meta {
    mode: "Database creation mode for haystac [fetch, index,\\nbuild]"
    path_database_output: "Path to the database output directory"
    query: "Database query in the NCBI query language. Please\\nrefer to the documentation for assistance with\\nconstructing a valid query."
    query_file: "File containing a database query in the NCBI query"
    sequences_file: "Tab delimited file containing one record per row: the\\nname of the taxon, a user defined accession code, and\\nthe path to the fasta file (optionally compressed)."
    refseq_rep: "Use one of the RefSeq curated tables to construct a\\nDB. Includes all prokaryotic species (excluding\\nstrains) from the representative RefSeq DB, or all the\\nspecies and strains from the viruses DB, or all the\\nspecies and subspecies from the eukaryotes DB. If\\nmultiple accessions exist for a given species/strain,\\nthe first pair of species/accession is kept. Available\\nRefSeq tables to use [prokaryote_rep, viruses,\\neukaryotes]."
    force_accessions: "Disable validation checks for 'anomalous' assembly\\nflags in NCBI (default: False)"
    exclude_accessions: "[<accession> ...]\\nList of NCBI accessions to exclude. (default: [])"
    resolve_accessions: "Pick the first accession when two accessions for a\\ntaxon can be found in user provided input files\\n(default: False)"
    bowtie_two_scaling: "Rescaling factor to keep the bowtie2 mutlifasta index\\nbelow the maximum memory limit (default: 25.0)"
    rank: "Taxonomic rank to perform the identifications on\\n[genus, species, subspecies, serotype] (default:\\nspecies)"
    genera: "[<genus> ...]\\nList of genera to restrict the abundance calculations."
    mtdna: "For eukaryotes, download mitochondrial genomes only.\\nNot to be used with --refseq-rep or queries containing\\nprokaryotes (default: False)"
    seed: "Random seed for database indexing"
    cores: "Maximum number of CPU cores to use (default: 8)"
    mem: "Maximum memory (MB) to use (default: 16012)"
    unlock: "Unlock the output directory following a crash or hard\\nrestart (default: False)"
    debug: "Enable debugging mode (default: False)"
    snake_make: "'<json>'  Pass additional flags to the `snakemake` scheduler."
    language_dot: "--accessions-file <path>"
  }
  output {
    File out_stdout = stdout()
    File out_path_database_output = "${in_path_database_output}"
    Directory out_unlock = "${in_unlock}"
  }
}