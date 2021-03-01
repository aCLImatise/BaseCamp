version 1.0

task AnviscriptgenCPRclassifier {
  input {
    File? output_file_name
    String matrix_file
  }
  command <<<
    anvi_script_gen_CPR_classifier \
      ~{matrix_file} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_file_name: "Output file name for the classifier.\\n"
    matrix_file: "TAB-delimited matrix of CPR genome names, classes, and\\npresence absence of single-copy genes. Headers of the\\nfirst two rows should be \\\"genome\\\", and \\\"class\\\". The\\nrest of the rows shold be single-copy genes."
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}