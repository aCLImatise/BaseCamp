version 1.0

task ChakinExpressionAddExpression {
  input {
    String? separator
    String? unit
    String? query_type
    Boolean? match_on_name
    String? re_name
    Boolean? skip_missing
    String organism_id
    String analysis_id
  }
  command <<<
    chakin expression add_expression \
      ~{organism_id} \
      ~{analysis_id} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""} \
      ~{if defined(unit) then ("--unit " +  '"' + unit + '"') else ""} \
      ~{if defined(query_type) then ("--query_type " +  '"' + query_type + '"') else ""} \
      ~{true="--match_on_name" false="" match_on_name} \
      ~{if defined(re_name) then ("--re_name " +  '"' + re_name + '"') else ""} \
      ~{true="--skip_missing" false="" skip_missing}
  >>>
  parameter_meta {
    separator: "Separating character in the matrix file (ex : ','). Default character is tab.  [default:        ]"
    unit: "The units associated with the loaded values (ie, FPKM, RPKM, raw counts)"
    query_type: "The feature type (e.g. 'gene', 'mRNA', 'polypeptide', 'contig') of the query. It must be a valid Sequence Ontology term.  [default: mRNA]"
    match_on_name: "Match features using their name instead of their uniquename"
    re_name: "Regular expression to extract the feature name from the input file (first capturing group will be used)."
    skip_missing: "Skip lines with unknown features or GO id instead of aborting everything."
    organism_id: ""
    analysis_id: ""
  }
}