version 1.0

task Recognizerpy {
  input {
    Int? threads
    Directory? output_directory
    Boolean? download_resources
    Directory? resources_directory
    String? dbs
    Int? database
    Boolean? custom_database
    Int? max_target_seqs
    Boolean? tsv
    Boolean? remove_spaces
    Boolean? no_output_sequences
    Boolean? no_blast_info
    File? fasta_file_protein
  }
  command <<<
    recognizer_py \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(output_directory) then ("--output " +  '"' + output_directory + '"') else ""} \
      ~{if (download_resources) then "--download-resources" else ""} \
      ~{if defined(resources_directory) then ("--resources-directory " +  '"' + resources_directory + '"') else ""} \
      ~{if defined(dbs) then ("-dbs " +  '"' + dbs + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if (custom_database) then "--custom-database" else ""} \
      ~{if defined(max_target_seqs) then ("--max-target-seqs " +  '"' + max_target_seqs + '"') else ""} \
      ~{if (tsv) then "--tsv" else ""} \
      ~{if (remove_spaces) then "--remove-spaces" else ""} \
      ~{if (no_output_sequences) then "--no-output-sequences" else ""} \
      ~{if (no_blast_info) then "--no-blast-info" else ""} \
      ~{if defined(fasta_file_protein) then ("--file " +  '"' + fasta_file_protein + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/recognizer:1.4.3--0"
  }
  parameter_meta {
    threads: "Number of threads for reCOGnizer to use. Default is\\nnumber of CPUs available minus 2."
    output_directory: "Output directory"
    download_resources: "If resources for reCOGnizer are not available at\\n\\\"resources_directory\\\""
    resources_directory: "Output directory for storing databases and other\\nresources"
    dbs: "[{CDD,Pfam,NCBIfam,Protein_Clusters,Smart,TIGRFAM,COG,KOG} ...], --databases {CDD,Pfam,NCBIfam,Protein_Clusters,Smart,TIGRFAM,COG,KOG} [{CDD,Pfam,NCBIfam,Protein_Clusters,Smart,TIGRFAM,COG,KOG} ...]\\nDatabases to include in functional annotation"
    database: "Basename of database for annotation. If multiple\\ndatabases, use comma separated list (db1,db2,db3)"
    custom_database: "If database was NOT produced by reCOGnizer"
    max_target_seqs: "Number of maximum identifications for each protein.\\nDefault is 1."
    tsv: "Tables will be produced in TSV format (and not EXCEL)."
    remove_spaces: "BLAST ignores sequences IDs after the first space.\\nThis option changes all spaces to underscores to keep\\nthe full IDs."
    no_output_sequences: "Protein sequences from the FASTA input will be stored\\nin their own column."
    no_blast_info: "Information from the alignment will be stored in their\\nown columns."
    fasta_file_protein: "Fasta file with protein sequences for annotation"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
    Directory out_resources_directory = "${in_resources_directory}"
  }
}