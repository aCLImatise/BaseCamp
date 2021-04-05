version 1.0

task PlasmidID {
  input {
    Boolean? r_one
    Boolean? r_two
    File? database
    Boolean? sample
    Boolean? group
    Boolean? contigs
    File? annotate
    Directory? outputdir_output_directory
    Boolean? explore
    Boolean? only_reconstruct
    Boolean? undo_winner_takes
    Directory? trim_mo_matic_directory
    Boolean? no_trim
    Boolean? coverage_cut_off
    Int? coverage_summary
    Boolean? cluster
    Boolean? km_er
    Int? alignment_identity
    Int? alignment_percentage
    Boolean? length_total
    Int? extend_annotation
    Directory? config_directory
    File? config_file_individual
    Boolean? memory
    Boolean? threads
  }
  command <<<
    plasmidID \
      ~{if (r_one) then "--R1" else ""} \
      ~{if (r_two) then "--R2" else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if (sample) then "--sample" else ""} \
      ~{if (group) then "--group" else ""} \
      ~{if (contigs) then "--contigs" else ""} \
      ~{if defined(annotate) then ("--annotate " +  '"' + annotate + '"') else ""} \
      ~{if (outputdir_output_directory) then "-o" else ""} \
      ~{if (explore) then "--explore" else ""} \
      ~{if (only_reconstruct) then "--only-reconstruct" else ""} \
      ~{if (undo_winner_takes) then "-w" else ""} \
      ~{if defined(trim_mo_matic_directory) then ("--trimmomatic-directory " +  '"' + trim_mo_matic_directory + '"') else ""} \
      ~{if (no_trim) then "--no-trim" else ""} \
      ~{if (coverage_cut_off) then "--coverage-cutoff" else ""} \
      ~{if defined(coverage_summary) then ("--coverage-summary " +  '"' + coverage_summary + '"') else ""} \
      ~{if (cluster) then "--cluster" else ""} \
      ~{if (km_er) then "--kmer" else ""} \
      ~{if defined(alignment_identity) then ("--alignment-identity " +  '"' + alignment_identity + '"') else ""} \
      ~{if defined(alignment_percentage) then ("--alignment-percentage " +  '"' + alignment_percentage + '"') else ""} \
      ~{if (length_total) then "--length-total" else ""} \
      ~{if defined(extend_annotation) then ("--extend-annotation " +  '"' + extend_annotation + '"') else ""} \
      ~{if defined(config_directory) then ("--config-directory " +  '"' + config_directory + '"') else ""} \
      ~{if defined(config_file_individual) then ("--config-file-individual " +  '"' + config_file_individual + '"') else ""} \
      ~{if (memory) then "--memory" else ""} \
      ~{if (threads) then "--threads" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/plasmidid:1.6.4--1"
  }
  parameter_meta {
    r_one: "<filename>      reads corresponding to paired-end R1 (mandatory)"
    r_two: "<filename>      reads corresponding to paired-end R2 (mandatory)"
    database: "database to map and reconstruct (mandatory)"
    sample: "<string>        sample name (mandatory), less than 37 characters"
    group: "<string>        group name (optional). If unset, samples will be gathered in NO_GROUP group"
    contigs: "<filename>      file with contigs. If supplied, plasmidID will not assembly reads"
    annotate: "file with configuration file for specific annotation"
    outputdir_output_directory: "<output_dir>    output directory, by default is the current directory"
    explore: "Relaxes default parameters to find less reliable relationships within data supplied and database"
    only_reconstruct: "Database supplied will not be filtered and all sequences will be used as scaffold\\nThis option does not require R1 and R2, instead a contig file can be supplied"
    undo_winner_takes: "Undo winner takes it all algorithm when clustering by kmer - QUICKER MODE"
    trim_mo_matic_directory: "directory holding trimmomatic .jar executable"
    no_trim: "Reads supplied will not be quality trimmed"
    coverage_cut_off: "<int>   minimun coverage percentage to select a plasmid as scafold (0-100), default 80"
    coverage_summary: "minimun coverage percentage to include plasmids in summary image (0-100), default 90"
    cluster: "<int>   kmer identity to cluster plasmids into the same representative sequence (0 means identical) (0-1), default 0.5"
    km_er: "<int>   identity to filter plasmids from the database with kmer approach (0-1), default 0.95"
    alignment_identity: "minimun identity percentage aligned for a contig to annotate, default 90"
    alignment_percentage: "minimun length percentage aligned for a contig to annotate, default 20"
    length_total: "<int>   minimun alignment length to filter blast analysis"
    extend_annotation: "look for annotation over regions with no homology found (base pairs), default 500bp"
    config_directory: "directory holding config files, default config_files/"
    config_file_individual: "file name of the individual file used to reconstruct"
    memory: "<int>   max memory allowed to use"
    threads: "<int>   number of threads"
  }
  output {
    File out_stdout = stdout()
    Directory out_outputdir_output_directory = "${in_outputdir_output_directory}"
  }
}