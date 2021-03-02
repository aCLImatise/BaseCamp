version 1.0

task DatafunkCurateLineages {
  input {
    Directory? input_directory
    File? output_file
  }
  command <<<
    datafunk curate_lineages \
      ~{if defined(input_directory) then ("--input-directory " +  '"' + input_directory + '"') else ""} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0"
  }
  parameter_meta {
    input_directory: "Path to input directory containing traits.csv files"
    output_file: "Name of output CSV\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}