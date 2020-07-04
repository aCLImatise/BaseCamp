version 1.0

task Targetfinder.pl {
  input {
    String? small_rna_sequence
    File? target_sequence_database
    String? query_sequence_name
    Float? prediction_score_value
    Int? threads_parallel_smithwaterman
    String? output_format_small
    Boolean? search_reverse_strand
    Boolean? options
    Boolean? more_options
  }
  command <<<
    targetfinder.pl \
      ~{if defined(small_rna_sequence) then ("-s " +  '"' + small_rna_sequence + '"') else ""} \
      ~{if defined(target_sequence_database) then ("-d " +  '"' + target_sequence_database + '"') else ""} \
      ~{if defined(query_sequence_name) then ("-q " +  '"' + query_sequence_name + '"') else ""} \
      ~{if defined(prediction_score_value) then ("-c " +  '"' + prediction_score_value + '"') else ""} \
      ~{if defined(threads_parallel_smithwaterman) then ("-t " +  '"' + threads_parallel_smithwaterman + '"') else ""} \
      ~{if defined(output_format_small) then ("-p " +  '"' + output_format_small + '"') else ""} \
      ~{true="-r" false="" search_reverse_strand} \
      ~{true="-OPTIONS" false="" options} \
      ~{true="-MORE_OPTIONS" false="" more_options}
  >>>
  parameter_meta {
    small_rna_sequence: "Small RNA sequence (RNA or DNA, 5'->3')"
    target_sequence_database: "Target sequence database file (FASTA-format)"
    query_sequence_name: "Query sequence name (DEFAULT = 'query')"
    prediction_score_value: "Prediction score cutoff value (DEFAULT = 4)"
    threads_parallel_smithwaterman: "Threads for parallel Smith-Waterman searches (DEFAULT = 1)"
    output_format_small: "Output format for small RNA-target pairs (DEFAULT = 'classic') Available options: 'classic' (Original TargetFinder base-pairing format) 'gff'     (Generic Feature Format) 'json'    (JavaScript Object Notation) 'table'   (Tab-deliminated Format)"
    search_reverse_strand: "Search reverse strand for targets?. Use this option if the database is genomic DNA."
    options: ""
    more_options: ""
  }
}