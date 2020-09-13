version 1.0

task Tiddit {
  input {
    Boolean? sv
    Boolean? cov
    Float tidd_it_two_do_tone_two_dot_zero
  }
  command <<<
    tiddit \
      ~{tidd_it_two_do_tone_two_dot_zero} \
      ~{if (sv) then "--sv" else ""} \
      ~{if (cov) then "--cov" else ""}
  >>>
  parameter_meta {
    sv: "call structural variation"
    cov: "generate a coverage bed file"
    tidd_it_two_do_tone_two_dot_zero: ""
  }
  output {
    File out_stdout = stdout()
  }
}