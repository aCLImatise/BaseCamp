version 1.0

task ChakinLoadBlast {
  input {
    String? blast_db
    Int? blast_db_id
    File? re_name
    String? query_type
    Boolean? match_on_name
    String module
    String unique_name
  }
  command <<<
    chakin load blast \
      ~{module} \
      ~{unique_name} \
      ~{if defined(blast_db) then ("--blastdb " +  '"' + blast_db + '"') else ""} \
      ~{if defined(blast_db_id) then ("--blastdb_id " +  '"' + blast_db_id + '"') else ""} \
      ~{if defined(re_name) then ("--re_name " +  '"' + re_name + '"') else ""} \
      ~{if defined(query_type) then ("--query_type " +  '"' + query_type + '"') else ""} \
      ~{if (match_on_name) then "--match_on_name" else ""}
  >>>
  parameter_meta {
    blast_db: "Name of the database blasted against (must be in the\\nChado db table)"
    blast_db_id: "ID of the database blasted against (must be in the\\nChado db table)"
    re_name: "Regular expression to extract the feature name from\\nthe input file (first capturing group will be used)."
    query_type: "The feature type (e.g. 'gene', 'mRNA', 'polypeptide',\\n'contig') of the query. It must be a valid Sequence\\nOntology term.  [default: polypeptide]"
    match_on_name: "Match features using their name instead of their"
    module: "Output:\\nNumber of processed hits"
    unique_name: "--skip_missing        Skip lines with unknown features or GO id instead of"
  }
  output {
    File out_stdout = stdout()
  }
}