version 1.0

task Tiddit {
  input {
    Boolean? sv
    Boolean? cov
    String tidd_it_two_do_tone_two_dot_zero
  }
  command <<<
    tiddit \
      ~{tidd_it_two_do_tone_two_dot_zero} \
      ~{true="--sv" false="" sv} \
      ~{true="--cov" false="" cov}
  >>>
  parameter_meta {
    sv: "call structural variation"
    cov: "generate a coverage bed file"
    tidd_it_two_do_tone_two_dot_zero: ""
  }
}