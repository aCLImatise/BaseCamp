version 1.0

task Percentid {
  input {
    String multi_fast_a_or_stockholm_alignment
  }
  command <<<
    percentid \
      ~{multi_fast_a_or_stockholm_alignment}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fsa:1.15.9--h8b12597_1"
  }
  parameter_meta {
    multi_fast_a_or_stockholm_alignment: ""
  }
  output {
    File out_stdout = stdout()
  }
}