version 1.0

task Overlap {
  input {
    String matches_one
    String matches_two
    String out_prefix
  }
  command <<<
    overlap \
      ~{matches_one} \
      ~{matches_two} \
      ~{out_prefix}
  >>>
  parameter_meta {
    matches_one: ""
    matches_two: ""
    out_prefix: ""
  }
}