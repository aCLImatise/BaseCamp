version 1.0

task BedparseCdsBedfile {
  input {
    Boolean ignoreIgnoreCdsOnly
  }
  command <<<
    bedparse cds bedfile \
      ~{true="--ignoreCDSonly" false="" ignoreIgnoreCdsOnly}
  >>>
}