version 1.0

task LabelMulti.py {
  input {
    String? input_file_text
    String? data
    String? label
    String? pairs
    String? output_text_tabseparated
  }
  command <<<
    label_multi.py \
      ~{if defined(input_file_text) then ("--input " +  '"' + input_file_text + '"') else ""} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(label) then ("--label " +  '"' + label + '"') else ""} \
      ~{if defined(pairs) then ("--pairs " +  '"' + pairs + '"') else ""} \
      ~{if defined(output_text_tabseparated) then ("--output " +  '"' + output_text_tabseparated + '"') else ""}
  >>>
  parameter_meta {
    input_file_text: "The input file in text tab delimited format containing the fusion genes candidates produced by 'find_fusion_genes.py'."
    data: "It contains the list of fusion genes with offending reads."
    label: "Label used to mark the candidate fusion genes which are founf in the filter."
    pairs: "For fusion genes with striclty less than the number of supporting pairs, specified here, it is applied the second label. Default is none."
    output_text_tabseparated: "The output text tab-separated file containing the candidate fusion genes which are found in the filter. The format is as the input file and sorted by counts column."
  }
}