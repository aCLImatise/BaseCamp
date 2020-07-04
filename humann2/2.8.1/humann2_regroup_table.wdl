version 1.0

task Humann2RegroupTable {
  input {
    String? original_output_table
    String? groups
    String? custom
    Boolean? reversed
    String? function
    String? precision
    String? ungrouped
    String? protected
    String? path_modified_output
  }
  command <<<
    humann2_regroup_table \
      ~{if defined(original_output_table) then ("--input " +  '"' + original_output_table + '"') else ""} \
      ~{if defined(groups) then ("--groups " +  '"' + groups + '"') else ""} \
      ~{if defined(custom) then ("--custom " +  '"' + custom + '"') else ""} \
      ~{true="--reversed" false="" reversed} \
      ~{if defined(function) then ("--function " +  '"' + function + '"') else ""} \
      ~{if defined(precision) then ("--precision " +  '"' + precision + '"') else ""} \
      ~{if defined(ungrouped) then ("--ungrouped " +  '"' + ungrouped + '"') else ""} \
      ~{if defined(protected) then ("--protected " +  '"' + protected + '"') else ""} \
      ~{if defined(path_modified_output) then ("--output " +  '"' + path_modified_output + '"') else ""}
  >>>
  parameter_meta {
    original_output_table: "Original output table (tsv or biom format); default=[TSV/STDIN]"
    groups: "Built-in grouping options"
    custom: "Custom groups file (.tsv or .tsv.gz format)"
    reversed: "Custom groups file is reversed: mapping from features to groups"
    function: "How to combine grouped features; default=sum"
    precision: "Decimal places to round to after applying function; default=3"
    ungrouped: "Include an 'UNGROUPED' group to capture features that did not belong to other groups? default=Y"
    protected: "Carry through protected features, such as 'UNMAPPED'? default=Y"
    path_modified_output: "Path for modified output table; default=STDOUT"
  }
}