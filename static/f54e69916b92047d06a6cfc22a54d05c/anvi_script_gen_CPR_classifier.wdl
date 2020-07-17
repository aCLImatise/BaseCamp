version 1.0

task AnviScriptGenCPRClassifier {
  input {
    String? output_file_name
    String matrix_file
  }
  command <<<
    anvi-script-gen-CPR-classifier \
      ~{matrix_file} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""}
  >>>
  parameter_meta {
    output_file_name: "Output file name for the classifier."
    matrix_file: "TAB-delimited matrix of CPR genome names, classes, and presence absence of single-copy genes. Headers of the first two rows should be \"genome\", and \"class\". The rest of the rows shold be single-copy genes."
  }
}