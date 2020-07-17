version 1.0

task OverlapAlign {
  input {
    String fast_a_one
    String fast_a_two
  }
  command <<<
    overlap-align \
      ~{fast_a_one} \
      ~{fast_a_two}
  >>>
  parameter_meta {
    fast_a_one: ""
    fast_a_two: ""
  }
}