version 1.0

task Percentid {
  input {
    String multi_fast_a_or_stockholm_alignment
  }
  command <<<
    percentid \
      ~{multi_fast_a_or_stockholm_alignment}
  >>>
  parameter_meta {
    multi_fast_a_or_stockholm_alignment: ""
  }
}