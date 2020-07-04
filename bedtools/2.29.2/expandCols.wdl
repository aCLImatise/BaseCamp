version 1.0

task ExpandCols {
  input {
    Boolean? input_file_assumes
    Boolean? specify_column_based
    String bed_tools
    String expand
    String? cols
  }
  command <<<
    expandCols \
      ~{bed_tools} \
      ~{expand} \
      ~{cols} \
      ~{true="-i" false="" input_file_assumes} \
      ~{true="-c" false="" specify_column_based}
  >>>
  parameter_meta {
    input_file_assumes: "Input file. Assumes \"stdin\" if omitted."
    specify_column_based: "Specify the column (1-based) that should be summarized. - Required."
    bed_tools: ""
    expand: ""
    cols: ""
  }
}