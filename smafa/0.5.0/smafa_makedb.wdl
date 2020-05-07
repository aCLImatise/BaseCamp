version 1.0

task SmafaMakedb {
  input {
    Boolean aminoAminoAcid
    Boolean quietQuiet
    Boolean translateTranslate
    Boolean verboseVerbose
    String? flagsFlags
    String? dbDbFastA
    String? dbDb
  }
  command <<<
    smafa makedb \
      ~{flagsFlags} \
      ~{true="--amino-acid" false="" aminoAminoAcid} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--translate" false="" translateTranslate} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{dbDbFastA} \
      ~{dbDb}
  >>>
}