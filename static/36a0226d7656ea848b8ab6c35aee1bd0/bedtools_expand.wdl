version 1.0

task BedtoolsExpand {
  input {
    Boolean? input_file_assumes
    Boolean? specify_column_based
    String? cols
  }
  command <<<
    bedtools expand \
      ~{cols} \
      ~{true="-i" false="" input_file_assumes} \
      ~{true="-c" false="" specify_column_based}
  >>>
  parameter_meta {
    input_file_assumes: "Input file. Assumes \"stdin\" if omitted."
    specify_column_based: "Specify the column (1-based) that should be summarized. - Required."
    cols: ""
  }
}