version 1.0

task TripailleExpressionAddExpression {
  input {
    String? match_type
    Int? array_design_id
    String? quantification_units
    File? file_extension
    File? start_regex
    File? stop_regex
    Int? seq_type
    Boolean? use_column
    Boolean? no_wait
    String file_path
  }
  command <<<
    tripaille expression add_expression \
      ~{file_path} \
      ~{if defined(match_type) then ("--match_type " +  '"' + match_type + '"') else ""} \
      ~{if defined(array_design_id) then ("--array_design_id " +  '"' + array_design_id + '"') else ""} \
      ~{if defined(quantification_units) then ("--quantification_units " +  '"' + quantification_units + '"') else ""} \
      ~{if defined(file_extension) then ("--file_extension " +  '"' + file_extension + '"') else ""} \
      ~{if defined(start_regex) then ("--start_regex " +  '"' + start_regex + '"') else ""} \
      ~{if defined(stop_regex) then ("--stop_regex " +  '"' + stop_regex + '"') else ""} \
      ~{if defined(seq_type) then ("--seq_type " +  '"' + seq_type + '"') else ""} \
      ~{if (use_column) then "--use_column" else ""} \
      ~{if (no_wait) then "--no_wait" else ""}
  >>>
  parameter_meta {
    match_type: "Match to features using either name or\\nuniquename. Default to uniquename  [default:\\nuniquename]"
    array_design_id: "The array design ID associated with this\\nanalysis. (Non functional in Tripal2)"
    quantification_units: "The units associated with the loaded values\\n(ie, FPKM, RPKM, raw counts)."
    file_extension: "File extension for the file(s) to be loaded\\ninto Chado. Do not include the \\\".\\\". Not\\nrequired for matrix files."
    start_regex: "A regular expression to describe the line that\\noccurs before the start of the expression data.\\nIf the file has no header, this is not needed."
    stop_regex: "A regular expression to describe the line that\\noccurs after the end of the expression data. If\\nthe file has no footer text, this is not\\nneeded."
    seq_type: "Specify the feature type to associate the data\\nwith. (Tripal3 only)"
    use_column: "Set if the expression file is a column file"
    no_wait: "Do not wait for job to complete"
    file_path: "Add an expression file to tripal"
  }
  output {
    File out_stdout = stdout()
  }
}