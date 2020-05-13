version 1.0

task FilterPositions.pl {
  input {
    Boolean inputInput
    Boolean badBadPositions
    Boolean outputOutput
  }
  command <<<
    filter-positions.pl \
      ~{true="--input" false="" inputInput} \
      ~{true="--bad-positions" false="" badBadPositions} \
      ~{true="--output" false="" outputOutput}
  >>>
}