version 1.0

task SuppapyPsiPerIsoform {
  input {
    File? gtf_file
    File? expression_file
    File? output_file
    String? mode
  }
  command <<<
    suppa_py psiPerIsoform \
      ~{if defined(gtf_file) then ("--gtf-file " +  '"' + gtf_file + '"') else ""} \
      ~{if defined(expression_file) then ("--expression-file " +  '"' + expression_file + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gtf_file: "Input gtf file"
    expression_file: "Input expression file"
    output_file: "Path and name of the ouput file"
    mode: "to choose from DEBUG, INFO, WARNING, ERROR and\\nCRITICAL\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}