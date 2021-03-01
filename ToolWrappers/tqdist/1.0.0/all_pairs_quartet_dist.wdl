version 1.0

task AllPairsQuartetDist {
  input {
    File input_filename
    String? var_output
    File? filename
  }
  command <<<
    all_pairs_quartet_dist \
      ~{input_filename} \
      ~{var_output} \
      ~{filename}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_filename: ""
    var_output: ""
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}