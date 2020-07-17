version 1.0

task TripletDist {
  input {
    Boolean? v
    File filename_one
    File filename_two
  }
  command <<<
    triplet_dist \
      ~{filename_one} \
      ~{filename_two} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    v: ""
    filename_one: ""
    filename_two: ""
  }
}