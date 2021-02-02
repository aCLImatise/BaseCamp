version 1.0

task TranscovPicksubset {
  input {
    File? output_file
    String input_sample
    String index_file
    String ids_file
  }
  command <<<
    transcov pick_subset \
      ~{input_sample} \
      ~{index_file} \
      ~{ids_file} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    output_file: "--help                  Show this message and exit.\\n"
    input_sample: ""
    index_file: ""
    ids_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}