version 1.0

task Tiddit {
  input {
    Boolean? sv
    Boolean? cov
    Float tidd_it_two_do_tone_two_dot_one
  }
  command <<<
    tiddit \
      ~{tidd_it_two_do_tone_two_dot_one} \
      ~{if (sv) then "--sv" else ""} \
      ~{if (cov) then "--cov" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tiddit:2.12.1--py37h0498b6d_0"
  }
  parameter_meta {
    sv: "call structural variation"
    cov: "generate a coverage bed file"
    tidd_it_two_do_tone_two_dot_one: ""
  }
  output {
    File out_stdout = stdout()
  }
}