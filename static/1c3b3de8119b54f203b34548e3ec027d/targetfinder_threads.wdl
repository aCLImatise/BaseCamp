version 1.0

task TargetfinderThreads.pl {
  input {
    File? input_small_rna
    File? target_sequence_database
    File? output_file_results
    Float? prediction_score_value
    Int? number_use_default
    String? output_format_small
    Boolean? search_reverse_strand
    Boolean? options
    Boolean? more_options
  }
  command <<<
    targetfinder_threads.pl \
      ~{if defined(input_small_rna) then ("-f " +  '"' + input_small_rna + '"') else ""} \
      ~{if defined(target_sequence_database) then ("-d " +  '"' + target_sequence_database + '"') else ""} \
      ~{if defined(output_file_results) then ("-o " +  '"' + output_file_results + '"') else ""} \
      ~{if defined(prediction_score_value) then ("-c " +  '"' + prediction_score_value + '"') else ""} \
      ~{if defined(number_use_default) then ("-t " +  '"' + number_use_default + '"') else ""} \
      ~{if defined(output_format_small) then ("-p " +  '"' + output_format_small + '"') else ""} \
      ~{true="-r" false="" search_reverse_strand} \
      ~{true="-OPTIONS" false="" options} \
      ~{true="-MORE_OPTIONS" false="" more_options}
  >>>
  parameter_meta {
    input_small_rna: "Input small RNA sequences file (FASTA-format)"
    target_sequence_database: "Target sequence database file (FASTA-format)"
    output_file_results: "Output file. Stores collective results"
    prediction_score_value: "Prediction score cutoff value (DEFAULT = 4)"
    number_use_default: "Number of TargetFinder threads/CPUs to use (DEFAULT = 1)"
    output_format_small: "Output format for small RNA-target pairs (DEFAULT = 'classic') Available options: 'classic' (Original TargetFinder base-pairing format) 'gff'     (Generic Feature Format) 'json'    (JavaScript Object Notation) 'table'   (Tab-deliminated Format)"
    search_reverse_strand: "Search reverse strand for targets?. Use this option if the database is genomic DNA."
    options: ""
    more_options: ""
  }
}