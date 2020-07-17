version 1.0

task Prophet {
  input {
    Boolean? gap_open
    Boolean? gap_extend
  }
  command <<<
    prophet \
      ~{true="-gapopen" false="" gap_open} \
      ~{true="-gapextend" false="" gap_extend}
  >>>
  parameter_meta {
    gap_open: "float      [1.0] Gap opening coefficient (Number from 0.000 to 100.000)"
    gap_extend: "float      [1.0] Gap extension coefficient (Number from 0.000 to 100.000)"
  }
}