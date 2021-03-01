version 1.0

task PairsTripletDist {
  input {
    Boolean? v
    Int filename_one
    Int filename_two
    File? output_filename
  }
  command <<<
    pairs_triplet_dist \
      ~{filename_one} \
      ~{filename_two} \
      ~{output_filename} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    v: ""
    filename_one: ""
    filename_two: ""
    output_filename: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_filename = "${in_output_filename}"
  }
}