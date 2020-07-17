version 1.0

task LabelFoundFusions.py {
  input {
    String? input_file_text
    String? data
    Boolean? data_not_commutative
    String? label
    String? output_text_tabseparated
  }
  command <<<
    label_found_fusions.py \
      ~{if defined(input_file_text) then ("--input " +  '"' + input_file_text + '"') else ""} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{true="--data-not-commutative" false="" data_not_commutative} \
      ~{if defined(label) then ("--label " +  '"' + label + '"') else ""} \
      ~{if defined(output_text_tabseparated) then ("--output " +  '"' + output_text_tabseparated + '"') else ""}
  >>>
  parameter_meta {
    input_file_text: "The input file in text tab delimited format containing list of final candidates of fusion genes."
    data: "The input text file tab separated format containing gene pairs which are used as filter for labeling (two columns and no header). Be default the order of genes in the a pair is ignored."
    data_not_commutative: "By default the order of genes in the database is ignored. If this is set then the order matters."
    label: "Label used to mark the found fusion genes."
    output_text_tabseparated: "The output text tab-separated file containing the candidate fusion genes which are found."
  }
}