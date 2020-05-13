version 1.0

task BedparseCds {
  input {
    Boolean ignoreIgnoreCdsOnly
  }
  command <<<
    bedparse cds \
      ~{true="--ignoreCDSonly" false="" ignoreIgnoreCdsOnly}
  >>>
}