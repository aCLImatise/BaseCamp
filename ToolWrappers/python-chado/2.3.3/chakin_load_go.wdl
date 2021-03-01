version 1.0

task ChakinLoadGo {
  input {
    String? query_type
    Boolean? match_on_name
    Int? go_column
    File? re_name
    Boolean? skip_missing
    String unique_name
  }
  command <<<
    chakin load go \
      ~{unique_name} \
      ~{if defined(query_type) then ("--query_type " +  '"' + query_type + '"') else ""} \
      ~{if (match_on_name) then "--match_on_name" else ""} \
      ~{if defined(go_column) then ("--go_column " +  '"' + go_column + '"') else ""} \
      ~{if defined(re_name) then ("--re_name " +  '"' + re_name + '"') else ""} \
      ~{if (skip_missing) then "--skip_missing" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    query_type: "The feature type (e.g. 'gene', 'mRNA', 'polypeptide',\\n'contig') of the query. It must be a valid Sequence\\nOntology term.  [default: polypeptide]"
    match_on_name: "Match features using their name instead of their"
    go_column: "Column containing the GO id (default=5).  [default:\\n5]"
    re_name: "Regular expression to extract the feature name from\\nthe input file (first capturing group will be used)."
    skip_missing: "Skip lines with unknown features or GO id instead of\\naborting everything."
    unique_name: "--name_column INTEGER  Column containing the feature identifiers (2, 3, 10"
  }
  output {
    File out_stdout = stdout()
  }
}