version 1.0

task Consensus {
  input {
    String outOut
    String pilePileUp
    Boolean ntNt
    Boolean csCs
    Boolean variantsVariants
    Boolean verboseVerbose
    String? contigContig
  }
  command <<<
    Consensus \
      ~{contigContig} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(pilePileUp) then ("--pileup " +  '"' + pilePileUp + '"') else ""} \
      ~{true="--nt" false="" ntNt} \
      ~{true="--cs" false="" csCs} \
      ~{true="--variants" false="" variantsVariants} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}