version 1.0

task Recognizer.py {
  input {
    String? threads
    String? output_directory
    String? resources_directory
    String? database
    Boolean? custom_database
    Int? max_target_seqs
    Boolean? tsv
    Boolean? remove_spaces
    Boolean? output_sequences
    File? file
  }
  command <<<
    recognizer.py \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(output_directory) then ("--output " +  '"' + output_directory + '"') else ""} \
      ~{if defined(resources_directory) then ("--resources-directory " +  '"' + resources_directory + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{true="--custom-database" false="" custom_database} \
      ~{if defined(max_target_seqs) then ("--max-target-seqs " +  '"' + max_target_seqs + '"') else ""} \
      ~{true="--tsv" false="" tsv} \
      ~{true="--remove-spaces" false="" remove_spaces} \
      ~{true="--output-sequences" false="" output_sequences} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""}
  >>>
  parameter_meta {
    threads: "Number of threads for reCOGnizer to use. Default is number of CPUs available minus 2."
    output_directory: "Output directory"
    resources_directory: "Output directory for storing COG databases and other resources"
    database: "Basename of COG database for annotation. If multiple databases, use comma separated list (db1,db2,db3)"
    custom_database: "If database was NOT produced by reCOGnizer"
    max_target_seqs: "Number of maximum identifications for each protein. Default is 1."
    tsv: "Tables will be produced in TSV format (and not EXCEL)."
    remove_spaces: "BLAST ignores sequences IDs after the first space. This option changes all spaces to underscores to keep the full IDs."
    output_sequences: "Protein sequences from the FASTA input will be stored in their own column. This produces considerably larger files."
    file: "Fasta file with protein sequences for annotation"
  }
}