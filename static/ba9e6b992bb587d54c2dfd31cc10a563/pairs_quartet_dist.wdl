version 1.0

task PairsQuartetDist {
  input {
    Boolean? v
    File filename_one
    File filename_two
    String? output_filename
  }
  command <<<
    pairs_quartet_dist \
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