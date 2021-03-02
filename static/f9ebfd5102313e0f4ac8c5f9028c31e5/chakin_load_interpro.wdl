version 1.0

task ChakinLoadInterpro {
  input {
    Boolean? parse_go
    File? re_name
    String? query_type
    Boolean? match_on_name
    String unique_name
  }
  command <<<
    chakin load interpro \
      ~{unique_name} \
      ~{if (parse_go) then "--parse_go" else ""} \
      ~{if defined(re_name) then ("--re_name " +  '"' + re_name + '"') else ""} \
      ~{if defined(query_type) then ("--query_type " +  '"' + query_type + '"') else ""} \
      ~{if (match_on_name) then "--match_on_name" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    parse_go: "Load GO annotation to the database"
    re_name: "Regular expression to extract the feature name from the\\ninput file (first capturing group will be used)."
    query_type: "The feature type (e.g. 'gene', 'mRNA', 'polypeptide',\\n'contig') of the query. It must be a valid Sequence\\nOntology term.  [default: polypeptide]"
    match_on_name: "Match features using their name instead of their"
    unique_name: "--skip_missing     Skip lines with unknown features or GO id instead of"
  }
  output {
    File out_stdout = stdout()
  }
}