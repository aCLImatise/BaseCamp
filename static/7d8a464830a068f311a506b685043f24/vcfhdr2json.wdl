version 1.0

task Vcfhdr2json {
  input {
    File? input_file
    File? output_file
  }
  command <<<
    vcfhdr2json \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file: "The input files"
    output_file: "The output file name."
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}