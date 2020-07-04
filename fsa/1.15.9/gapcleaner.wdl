version 1.0

task Gapcleaner {
  input {
    String multi_fast_a_or_stockholm_alignment
  }
  command <<<
    gapcleaner \
      ~{multi_fast_a_or_stockholm_alignment}
  >>>
  parameter_meta {
    multi_fast_a_or_stockholm_alignment: ""
  }
}