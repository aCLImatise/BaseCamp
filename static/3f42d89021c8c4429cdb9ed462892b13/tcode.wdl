version 1.0

task Tcode {
  input {
    Boolean? window
  }
  command <<<
    tcode \
      ~{true="-window" false="" window}
  >>>
  parameter_meta {
    window: "integer    [200] This is the number of nucleotide bases over which the TESTCODE statistic will be performed each time. The window will then slide along the sequence, covering the same number of bases each time. (Integer 200 or more)"
  }
}