version 1.0

task BigWigCorrelate {
  input {
    String a_dot_bigwig
    String b_dot_bigwig
  }
  command <<<
    bigWigCorrelate \
      ~{a_dot_bigwig} \
      ~{b_dot_bigwig}
  >>>
  parameter_meta {
    a_dot_bigwig: ""
    b_dot_bigwig: ""
  }
}