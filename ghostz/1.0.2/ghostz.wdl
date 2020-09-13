version 1.0

task Ghostz {
  input {
    String? protein_sequences_fasta
    String? the_name_database
    String? clustering_t_enable
    Int? chunk_size_database
    Int? length_subsequence_clustering
    Int? the_seed_threshold
    String? database_name_must
    Int? maximum_number_alignments
    Int? maximum_number_output
    String? query_sequence_type
    String? database_sequence_type
    String? filter_query_sequence
    Int? the_number_threads
    Int? minimum_length_query
  }
  command <<<
    ghostz \
      ~{if defined(protein_sequences_fasta) then ("-i " +  '"' + protein_sequences_fasta + '"') else ""} \
      ~{if defined(the_name_database) then ("-o " +  '"' + the_name_database + '"') else ""} \
      ~{if defined(clustering_t_enable) then ("-C " +  '"' + clustering_t_enable + '"') else ""} \
      ~{if defined(chunk_size_database) then ("-l " +  '"' + chunk_size_database + '"') else ""} \
      ~{if defined(length_subsequence_clustering) then ("-L " +  '"' + length_subsequence_clustering + '"') else ""} \
      ~{if defined(the_seed_threshold) then ("-s " +  '"' + the_seed_threshold + '"') else ""} \
      ~{if defined(database_name_must) then ("-d " +  '"' + database_name_must + '"') else ""} \
      ~{if defined(maximum_number_alignments) then ("-v " +  '"' + maximum_number_alignments + '"') else ""} \
      ~{if defined(maximum_number_output) then ("-b " +  '"' + maximum_number_output + '"') else ""} \
      ~{if defined(query_sequence_type) then ("-q " +  '"' + query_sequence_type + '"') else ""} \
      ~{if defined(database_sequence_type) then ("-t " +  '"' + database_sequence_type + '"') else ""} \
      ~{if defined(filter_query_sequence) then ("-F " +  '"' + filter_query_sequence + '"') else ""} \
      ~{if defined(the_number_threads) then ("-a " +  '"' + the_number_threads + '"') else ""} \
      ~{if defined(minimum_length_query) then ("-n " +  '"' + minimum_length_query + '"') else ""}
  >>>
  parameter_meta {
    protein_sequences_fasta: "Protein sequences in FASTA format for a database"
    the_name_database: "The name of the database"
    clustering_t_enable: "Clustering, T (enable) or F (disable) [T]"
    chunk_size_database: "Chunk size of the database (bytes) [1073741824 (=1GB)]"
    length_subsequence_clustering: "Length of a subsequence for clustering [10]"
    the_seed_threshold: "The seed threshold [39]"
    database_name_must: "database name (must be formatted)"
    maximum_number_alignments: "Maximum number of alignments for each subject [1]"
    maximum_number_output: "Maximum number of the output for a query [10]"
    query_sequence_type: "Query sequence type, p (protein) or d (dna) [p]"
    database_sequence_type: "Database sequence type, p (protein) or d (dna) [p]"
    filter_query_sequence: "Filter query sequence, T (enable) or F (disable) [T]"
    the_number_threads: "The number of threads [1]"
    minimum_length_query: "Minimum length of query[12]"
  }
  output {
    File out_stdout = stdout()
  }
}