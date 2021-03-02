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
      ~{if (input_file_assumes) then "-i" else ""} \
      ~{if (specify_column_based) then "-c" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file_assumes: "Input file. Assumes \\\"stdin\\\" if omitted."
    specify_column_based: "Specify the column (1-based) that should be summarized.\\n- Required."
    bed_tools: ""
    expand: ""
    cols: ""
  }
  output {
    File out_stdout = stdout()
  }
}