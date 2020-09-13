version 1.0

task TripailleAnalysisLoadBlast {
  input {
    Directory? blast_ext
    String? blast_db
    String? blast_db_id
    String? blast_parameters
    String? query_re
    String? query_type
    Boolean? query_unique_name
    Boolean? is_concat
    Boolean? search_keywords
    Int? no_parsed
    Boolean? no_wait
    String? algorithm
    String? source_version
    String? source_uri
    String? description
    String? date_executed
    String name
    String program
    String program_version
  }
  command <<<
    tripaille analysis load_blast \
      ~{name} \
      ~{program} \
      ~{program_version} \
      ~{if defined(blast_ext) then ("--blast_ext " +  '"' + blast_ext + '"') else ""} \
      ~{if defined(blast_db) then ("--blastdb " +  '"' + blast_db + '"') else ""} \
      ~{if defined(blast_db_id) then ("--blastdb_id " +  '"' + blast_db_id + '"') else ""} \
      ~{if defined(blast_parameters) then ("--blast_parameters " +  '"' + blast_parameters + '"') else ""} \
      ~{if defined(query_re) then ("--query_re " +  '"' + query_re + '"') else ""} \
      ~{if defined(query_type) then ("--query_type " +  '"' + query_type + '"') else ""} \
      ~{if (query_unique_name) then "--query_uniquename" else ""} \
      ~{if (is_concat) then "--is_concat" else ""} \
      ~{if (search_keywords) then "--search_keywords" else ""} \
      ~{if defined(no_parsed) then ("--no_parsed " +  '"' + no_parsed + '"') else ""} \
      ~{if (no_wait) then "--no_wait" else ""} \
      ~{if defined(algorithm) then ("--algorithm " +  '"' + algorithm + '"') else ""} \
      ~{if defined(source_version) then ("--sourceversion " +  '"' + source_version + '"') else ""} \
      ~{if defined(source_uri) then ("--sourceuri " +  '"' + source_uri + '"') else ""} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{if defined(date_executed) then ("--date_executed " +  '"' + date_executed + '"') else ""}
  >>>
  parameter_meta {
    blast_ext: "If looking for files in a directory, extension of\\nthe blast result files"
    blast_db: "Name of the database blasted against (must be in\\nthe Chado db table)"
    blast_db_id: "ID of the database blasted against (must be in the\\nChado db table)"
    blast_parameters: "Blast parameters used to produce these results"
    query_re: "The regular expression that can uniquely identify\\nthe query name. This parameters is required if the\\nfeature name is not the first word in the blast\\nquery name."
    query_type: "The feature type (e.g. 'gene', 'mRNA', 'contig') of\\nthe query. It must be a valid Sequence Ontology\\nterm."
    query_unique_name: "Use this if the --query-re regular expression\\nmatches unique names instead of names in the\\ndatabase."
    is_concat: "If the blast result file is simply a list of\\nconcatenated blast results."
    search_keywords: "Extract keywords for Tripal search"
    no_parsed: "Maximum number of hits to parse per feature.\\nDefault=all  [default: all]"
    no_wait: "Do not wait for job to complete"
    algorithm: "analysis algorithm"
    source_version: "analysis sourceversion"
    source_uri: "analysis sourceuri"
    description: "analysis description"
    date_executed: "analysis date_executed (yyyy-mm-dd)"
    name: ""
    program: ""
    program_version: ""
  }
  output {
    File out_stdout = stdout()
  }
}