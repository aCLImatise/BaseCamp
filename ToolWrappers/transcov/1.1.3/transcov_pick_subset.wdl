version 1.0

task TranscovPicksubset {
  input {
    String input_sample
    String index_file
    String ids_file
  }
  command <<<
    transcov pick_subset \
      ~{input_sample} \
      ~{index_file} \
      ~{ids_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_sample: ""
    index_file: ""
    ids_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}