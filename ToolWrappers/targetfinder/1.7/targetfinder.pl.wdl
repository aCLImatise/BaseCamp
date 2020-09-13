version 1.0

task Targetfinderpl {
  input {
    Int? small_rna_sequence
    File? target_sequence_database
    String? query_sequence_name
    Float? prediction_score_cutoff
    Int? threads_parallel_smithwaterman
    String? output_format_small
    Boolean? search_reverse_strand
    Boolean? more_options
    Boolean? options
  }
  command <<<
    targetfinder_pl \
      ~{if defined(small_rna_sequence) then ("-s " +  '"' + small_rna_sequence + '"') else ""} \
      ~{if defined(target_sequence_database) then ("-d " +  '"' + target_sequence_database + '"') else ""} \
      ~{if defined(query_sequence_name) then ("-q " +  '"' + query_sequence_name + '"') else ""} \
      ~{if defined(prediction_score_cutoff) then ("-c " +  '"' + prediction_score_cutoff + '"') else ""} \
      ~{if defined(threads_parallel_smithwaterman) then ("-t " +  '"' + threads_parallel_smithwaterman + '"') else ""} \
      ~{if defined(output_format_small) then ("-p " +  '"' + output_format_small + '"') else ""} \
      ~{if (search_reverse_strand) then "-r" else ""} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  parameter_meta {
    small_rna_sequence: "Small RNA sequence (RNA or DNA, 5'->3')"
    target_sequence_database: "Target sequence database file (FASTA-format)"
    query_sequence_name: "Query sequence name (DEFAULT = 'query')"
    prediction_score_cutoff: "Prediction score cutoff value (DEFAULT = 4)"
    threads_parallel_smithwaterman: "Threads for parallel Smith-Waterman searches (DEFAULT = 1)"
    output_format_small: "Output format for small RNA-target pairs (DEFAULT = 'classic')\\nAvailable options: 'classic' (Original TargetFinder base-pairing format)\\n'gff'     (Generic Feature Format)\\n'json'    (JavaScript Object Notation)\\n'table'   (Tab-deliminated Format)"
    search_reverse_strand: "Search reverse strand for targets?. Use this option if the database is genomic DNA."
    more_options: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}