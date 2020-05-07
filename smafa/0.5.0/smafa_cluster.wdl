version 1.0

task SmafaCluster {
  input {
    Boolean aminoAminoAcid
    Boolean fragmentFragmentMethod
    Boolean quietQuiet
    Boolean verboseVerbose
    Int divergenceDivergence
    Int kmKmErLength
    String? flagsFlags
    String? optionsOptions
    String? fastFastA
  }
  command <<<
    smafa cluster \
      ~{flagsFlags} \
      ~{true="--amino-acid" false="" aminoAminoAcid} \
      ~{true="--fragment-method" false="" fragmentFragmentMethod} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(divergenceDivergence) then ("--divergence " +  '"' + divergenceDivergence + '"') else ""} \
      ~{if defined(kmKmErLength) then ("--kmer-length " +  '"' + kmKmErLength + '"') else ""} \
      ~{optionsOptions} \
      ~{fastFastA}
  >>>
}