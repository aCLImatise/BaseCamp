version 1.0

task PredexDesign {
  input {
    String? input_files_count
    Directory? output_directory_default
  }
  command <<<
    predex design \
      ~{if defined(input_files_count) then ("--input " +  '"' + input_files_count + '"') else ""} \
      ~{if defined(output_directory_default) then ("--output " +  '"' + output_directory_default + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/predex:0.9.3--pyh5e36f6f_0"
  }
  parameter_meta {
    input_files_count: "Input files (count matrix, e.g., HTSeq)"
    output_directory_default: "Output directory (default = current)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_default = "${in_output_directory_default}"
  }
}