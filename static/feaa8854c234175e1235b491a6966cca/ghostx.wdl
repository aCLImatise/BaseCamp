version 1.0

task Ghostx {
  input {
    String? protein_sequences_fasta
    String? the_name_database
    Int? chunk_size_database
    String? database_sequence_type
    String? database_name_formatted
    Int? maximum_number_alignments
    Int? maximum_number_output
    File? score_matrix_file
    Int? open_gap_penalty
    Int? extend_gap_penalty
    Int? lower_limit_score
    Int? upper_limit_score
    Int? maximum_length_alignments
    String? query_sequence_type
    String? filter_query_sequence
    Int? the_number_threads
    Int? maximum_number_hits
  }
  command <<<
    ghostx \
      ~{if defined(protein_sequences_fasta) then ("-i " +  '"' + protein_sequences_fasta + '"') else ""} \
      ~{if defined(the_name_database) then ("-o " +  '"' + the_name_database + '"') else ""} \
      ~{if defined(chunk_size_database) then ("-l " +  '"' + chunk_size_database + '"') else ""} \
      ~{if defined(database_sequence_type) then ("-t " +  '"' + database_sequence_type + '"') else ""} \
      ~{if defined(database_name_formatted) then ("-d " +  '"' + database_name_formatted + '"') else ""} \
      ~{if defined(maximum_number_alignments) then ("-v " +  '"' + maximum_number_alignments + '"') else ""} \
      ~{if defined(maximum_number_output) then ("-b " +  '"' + maximum_number_output + '"') else ""} \
      ~{if defined(score_matrix_file) then ("-M " +  '"' + score_matrix_file + '"') else ""} \
      ~{if defined(open_gap_penalty) then ("-G " +  '"' + open_gap_penalty + '"') else ""} \
      ~{if defined(extend_gap_penalty) then ("-E " +  '"' + extend_gap_penalty + '"') else ""} \
      ~{if defined(lower_limit_score) then ("-s " +  '"' + lower_limit_score + '"') else ""} \
      ~{if defined(upper_limit_score) then ("-T " +  '"' + upper_limit_score + '"') else ""} \
      ~{if defined(maximum_length_alignments) then ("-S " +  '"' + maximum_length_alignments + '"') else ""} \
      ~{if defined(query_sequence_type) then ("-q " +  '"' + query_sequence_type + '"') else ""} \
      ~{if defined(filter_query_sequence) then ("-F " +  '"' + filter_query_sequence + '"') else ""} \
      ~{if defined(the_number_threads) then ("-a " +  '"' + the_number_threads + '"') else ""} \
      ~{if defined(maximum_number_hits) then ("-L " +  '"' + maximum_number_hits + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    protein_sequences_fasta: "Protein sequences in FASTA format for a database"
    the_name_database: "The name of database"
    chunk_size_database: "Chunk size of the database (bytes) [1073741824 (=1GB)]"
    database_sequence_type: "Database sequence type, p (protein) or d (dna) [p]"
    database_name_formatted: "database name (must be formatted)"
    maximum_number_alignments: "Maximum number of alignments for each subject [1]"
    maximum_number_output: "Maximum number of the output for a query [10]"
    score_matrix_file: "Score matrix file[BLOSUM62]"
    open_gap_penalty: "Open gap penalty [11]"
    extend_gap_penalty: "Extend gap penalty [1]"
    lower_limit_score: "Lower limit cutoff score for seed search [4]"
    upper_limit_score: "Upper limit cutoff score for seed search [30]"
    maximum_length_alignments: "Maximum length of alignments in seed search [10]"
    query_sequence_type: "Query sequence type, p (protein) or d (dna) [p]"
    filter_query_sequence: "Filter query sequence, T (enable) or F (disable) [T]"
    the_number_threads: "The number of threads [1]"
    maximum_number_hits: "Maximum number of hits [67108864]"
  }
  output {
    File out_stdout = stdout()
  }
}