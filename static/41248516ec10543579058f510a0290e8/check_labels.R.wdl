version 1.0

task CheckLabelsR {
  input {
    File? input_file
    File? label_field
    Boolean? condensed
    Int? attribute_type_col_num
    Int? variable_col_num
    Boolean? avoid_lowercase
    File? output_path
  }
  command <<<
    check_labels_R \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(label_field) then ("--label-field " +  '"' + label_field + '"') else ""} \
      ~{if (condensed) then "--condensed" else ""} \
      ~{if defined(attribute_type_col_num) then ("--attribute-type-col-num " +  '"' + attribute_type_col_num + '"') else ""} \
      ~{if defined(variable_col_num) then ("--variable-col-num " +  '"' + variable_col_num + '"') else ""} \
      ~{if (avoid_lowercase) then "--avoid-lowercase" else ""} \
      ~{if defined(output_path) then ("--output-path " +  '"' + output_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cell-types-analysis:0.1.11--0"
  }
  parameter_meta {
    input_file: "Path to input metadata file in .tsv format"
    label_field: "Name of label field in metadata file"
    condensed: "Is the provided metadata file in condensed format? Default: False"
    attribute_type_col_num: "Number of the attribute type field in condensed metadata file.\\nDefault: 5"
    variable_col_num: "Number of the label field in condensed metadata file. Default: 6"
    avoid_lowercase: "Should setting the labels to lowercase be skipped? Default: False"
    output_path: "Output for updated file"
  }
  output {
    File out_stdout = stdout()
    File out_output_path = "${in_output_path}"
  }
}