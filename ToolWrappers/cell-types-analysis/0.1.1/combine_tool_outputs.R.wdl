version 1.0

task CombineToolOutputsR {
  input {
    File? input_dir
    Int? top_labels_num
    File? exclusions
    Boolean? scores
    File? output_table
  }
  command <<<
    combine_tool_outputs_R \
      ~{if defined(input_dir) then ("--input-dir " +  '"' + input_dir + '"') else ""} \
      ~{if defined(top_labels_num) then ("--top-labels-num " +  '"' + top_labels_num + '"') else ""} \
      ~{if defined(exclusions) then ("--exclusions " +  '"' + exclusions + '"') else ""} \
      ~{if (scores) then "--scores" else ""} \
      ~{if defined(output_table) then ("--output-table " +  '"' + output_table + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_dir: "Path to the directory with standardised output .tsv files from multiple\\nclassifiers. It is expected that input files follow the format: A_B_final-labs.tsv,\\nwhere A is dataset or origin and B is classifier used to obtain predictions."
    top_labels_num: "Number of top labels to keep"
    exclusions: "Path to the yaml file with excluded terms. Must contain fields 'unlabelled' and 'trivial_terms'"
    scores: "Boolean: Are prediction scores available for the given method? Default: FALSE"
    output_table: "Path to the output table in text format"
  }
  output {
    File out_stdout = stdout()
    File out_output_table = "${in_output_table}"
  }
}