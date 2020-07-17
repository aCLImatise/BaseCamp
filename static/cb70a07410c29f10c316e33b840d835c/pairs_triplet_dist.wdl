version 1.0

task PairsTripletDist {
  input {
    Boolean? v
    File filename_one
    File filename_two
    String? output_filename
  }
  command <<<
    pairs_triplet_dist \
      ~{filename_one} \
      ~{filename_two} \
      ~{output_filename} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
    filename_one: ""
    filename_two: ""
    output_filename: ""
  }
}