version 1.0

task Tally {
  input {
    String cmp
  }
  command <<<
    tally \
      ~{cmp}
  >>>
  parameter_meta {
    cmp: "with cmp paired end identifier mismatches will be reported"
  }
}