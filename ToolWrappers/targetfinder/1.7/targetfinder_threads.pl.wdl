version 1.0

task TargetfinderThreadspl {
  input {
    File? input_small_rna
    File? target_sequence_database
    File? output_file_stores
    Float? prediction_score_value
    Int? number_threadscpus_use
    String? output_format_format
    Boolean? search_reverse_strand
    Boolean? more_options
    Boolean? options
  }
  command <<<
    targetfinder_threads_pl \
      ~{if defined(input_small_rna) then ("-f " +  '"' + input_small_rna + '"') else ""} \
      ~{if defined(target_sequence_database) then ("-d " +  '"' + target_sequence_database + '"') else ""} \
      ~{if defined(output_file_stores) then ("-o " +  '"' + output_file_stores + '"') else ""} \
      ~{if defined(prediction_score_value) then ("-c " +  '"' + prediction_score_value + '"') else ""} \
      ~{if defined(number_threadscpus_use) then ("-t " +  '"' + number_threadscpus_use + '"') else ""} \
      ~{if defined(output_format_format) then ("-p " +  '"' + output_format_format + '"') else ""} \
      ~{if (search_reverse_strand) then "-r" else ""} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_small_rna: "Input small RNA sequences file (FASTA-format)"
    target_sequence_database: "Target sequence database file (FASTA-format)"
    output_file_stores: "Output file. Stores collective results"
    prediction_score_value: "Prediction score cutoff value (DEFAULT = 4)"
    number_threadscpus_use: "Number of TargetFinder threads/CPUs to use (DEFAULT = 1)"
    output_format_format: "Output format for small RNA-target pairs (DEFAULT = 'classic')\\nAvailable options: 'classic' (Original TargetFinder base-pairing format)\\n'gff'     (Generic Feature Format)\\n'json'    (JavaScript Object Notation)\\n'table'   (Tab-deliminated Format)"
    search_reverse_strand: "Search reverse strand for targets?. Use this option if the database is genomic DNA."
    more_options: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_stores = "${in_output_file_stores}"
  }
}