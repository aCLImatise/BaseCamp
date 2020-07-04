version 1.0

task InterestedGeneGeneration.pl {
  input {
    Boolean? genbank_file_directory
    Boolean? database
    Boolean? output_directory
    Boolean? multiple_threads
    Boolean? start_at_blast
    Boolean? e_value
    Boolean? identify
    Boolean? coverage
    Boolean? match_length
  }
  command <<<
    interested_gene_generation.pl \
      ~{true="--genbank_file_directory" false="" genbank_file_directory} \
      ~{true="--database" false="" database} \
      ~{true="--output_directory" false="" output_directory} \
      ~{true="--multiple_threads" false="" multiple_threads} \
      ~{true="--start_at_blast" false="" start_at_blast} \
      ~{true="--e_value" false="" e_value} \
      ~{true="--identify" false="" identify} \
      ~{true="--coverage" false="" coverage} \
      ~{true="--match_length" false="" match_length}
  >>>
  parameter_meta {
    genbank_file_directory: "A directory containing annotated genomes as Genbank format file. To avoid a mistake, genome names cannot use special character, such as space, equal. For large number of genomes, users are recommended to download using Aspera, a high-speed file transfer tool (https://downloads.asperasoft.com/).                           "
    database: "A protein database in FASTA format, which contains at least one protein sequence homologous to the gene of interest."
    output_directory: "An output directory holding all the generated files by interested_gene_generation.pl. if this option is not set, interested_gene_generation.pl will create a directory named \"interested_gene_workplace\" in the bin directory from where interested_gene_generation.pl was invoked."
    multiple_threads: "set thread number (Default: 1)"
    start_at_blast: "Jump to a local blastp analysis, and Skips sequencing extraction (Default: T).  "
    e_value: "set E-value cutoff in Blast analysi (default: 1e-5)"
    identify: "set percent identity cutoff in Blast analysis (default: 30)"
    coverage: "set percent coverage (Query and Subject) cutoff in Blast analysis (default: 50)"
    match_length: "set alignment length cutoff in Blast analysis (default: 30) "
  }
}