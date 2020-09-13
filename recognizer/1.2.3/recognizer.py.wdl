version 1.0

task Recognizerpy {
  input {
    Int? threads
    Directory? output_directory
    Directory? resources_directory
    Int? database
    Boolean? custom_database
    Int? max_target_seqs
    Boolean? tsv
    Boolean? remove_spaces
    Boolean? output_sequences
    File? file
  }
  command <<<
    recognizer_py \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(output_directory) then ("--output " +  '"' + output_directory + '"') else ""} \
      ~{if defined(resources_directory) then ("--resources-directory " +  '"' + resources_directory + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if (custom_database) then "--custom-database" else ""} \
      ~{if defined(max_target_seqs) then ("--max-target-seqs " +  '"' + max_target_seqs + '"') else ""} \
      ~{if (tsv) then "--tsv" else ""} \
      ~{if (remove_spaces) then "--remove-spaces" else ""} \
      ~{if (output_sequences) then "--output-sequences" else ""} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""}
  >>>
  parameter_meta {
    threads: "Number of threads for reCOGnizer to use. Default is\\nnumber of CPUs available minus 2."
    output_directory: "Output directory"
    resources_directory: "Output directory for storing COG databases and other\\nresources"
    database: "Basename of COG database for annotation. If multiple\\ndatabases, use comma separated list (db1,db2,db3)"
    custom_database: "If database was NOT produced by reCOGnizer"
    max_target_seqs: "Number of maximum identifications for each protein.\\nDefault is 1."
    tsv: "Tables will be produced in TSV format (and not EXCEL)."
    remove_spaces: "BLAST ignores sequences IDs after the first space.\\nThis option changes all spaces to underscores to keep\\nthe full IDs."
    output_sequences: "Protein sequences from the FASTA input will be stored\\nin their own column. This produces considerably larger\\nfiles."
    file: "Fasta file with protein sequences for annotation"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
    Directory out_resources_directory = "${in_resources_directory}"
  }
}