version 1.0

task AllPairsTripletDist {
  input {
    File input_filename
    String? var_output
    File? filename
  }
  command <<<
    all_pairs_triplet_dist \
      ~{input_filename} \
      ~{var_output} \
      ~{filename}
  >>>
  parameter_meta {
    input_filename: ""
    var_output: ""
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}