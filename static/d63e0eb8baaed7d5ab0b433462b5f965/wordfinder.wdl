version 1.0

task Wordfinder {
  input {
    Boolean? gap_open
    Boolean? gap_extend
  }
  command <<<
    wordfinder \
      ~{true="-gapopen" false="" gap_open} \
      ~{true="-gapextend" false="" gap_extend}
  >>>
  parameter_meta {
    gap_open: "float      [10.0 for any sequence type] Gap opening penalty (Number from 0.000 to 1000.000)"
    gap_extend: "float      [0.5 for any sequence type] Gap extension penalty (Number from 0.000 to 10.000)"
  }
}