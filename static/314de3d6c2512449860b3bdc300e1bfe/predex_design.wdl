version 1.0

task PredexDesign {
  input {
    String? input_files_count
    Directory? output_directory
  }
  command <<<
    predex design \
      ~{if defined(input_files_count) then ("--input " +  '"' + input_files_count + '"') else ""} \
      ~{if defined(output_directory) then ("--output " +  '"' + output_directory + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/predex:0.9.2--pyh3252c3a_0"
  }
  parameter_meta {
    input_files_count: "Input files (count matrix, e.g., HTSeq)"
    output_directory: "Output directory"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}