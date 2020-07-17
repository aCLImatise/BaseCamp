version 1.0

task TripailleExpressionAddExpression {
  input {
    String? match_type
    String? array_design_id
    String? quantification_units
    String? file_extension
    String? start_regex
    String? stop_regex
    String? seq_type
    Boolean? use_column
    Boolean? no_wait
    String organism_id
    String analysis_id
  }
  command <<<
    tripaille expression add_expression \
      ~{organism_id} \
      ~{analysis_id} \
      ~{if defined(match_type) then ("--match_type " +  '"' + match_type + '"') else ""} \
      ~{if defined(array_design_id) then ("--array_design_id " +  '"' + array_design_id + '"') else ""} \
      ~{if defined(quantification_units) then ("--quantification_units " +  '"' + quantification_units + '"') else ""} \
      ~{if defined(file_extension) then ("--file_extension " +  '"' + file_extension + '"') else ""} \
      ~{if defined(start_regex) then ("--start_regex " +  '"' + start_regex + '"') else ""} \
      ~{if defined(stop_regex) then ("--stop_regex " +  '"' + stop_regex + '"') else ""} \
      ~{if defined(seq_type) then ("--seq_type " +  '"' + seq_type + '"') else ""} \
      ~{true="--use_column" false="" use_column} \
      ~{true="--no_wait" false="" no_wait}
  >>>
  parameter_meta {
    match_type: "Match to features using either name or uniquename. Default to uniquename  [default: uniquename]"
    array_design_id: "The array design ID associated with this analysis. (Non functional in Tripal2)"
    quantification_units: "The units associated with the loaded values (ie, FPKM, RPKM, raw counts)."
    file_extension: "File extension for the file(s) to be loaded into Chado. Do not include the \".\". Not required for matrix files."
    start_regex: "A regular expression to describe the line that occurs before the start of the expression data. If the file has no header, this is not needed."
    stop_regex: "A regular expression to describe the line that occurs after the end of the expression data. If the file has no footer text, this is not needed."
    seq_type: "Specify the feature type to associate the data with. (Tripal3 only)"
    use_column: "Set if the expression file is a column file"
    no_wait: "Do not wait for job to complete"
    organism_id: ""
    analysis_id: ""
  }
}