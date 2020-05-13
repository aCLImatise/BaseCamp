version 1.0

task ContigOverlaps {
  input {
    Boolean percentPercentIdentity
  }
  command <<<
    contigOverlaps \
      ~{true="--percentIdentity" false="" percentPercentIdentity}
  >>>
}