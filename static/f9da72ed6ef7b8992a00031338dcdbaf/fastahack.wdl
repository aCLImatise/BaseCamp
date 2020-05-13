version 1.0

task Fastahack {
  input {
    Boolean indexIndex
    String regionRegion
    Boolean stdinStdin
    Boolean entropyEntropy
    Boolean dumpDump
    String? fastFastAReference
  }
  command <<<
    fastahack \
      ~{fastFastAReference} \
      ~{true="--index" false="" indexIndex} \
      ~{if defined(regionRegion) then ("--region " +  '"' + regionRegion + '"') else ""} \
      ~{true="--stdin" false="" stdinStdin} \
      ~{true="--entropy" false="" entropyEntropy} \
      ~{true="--dump" false="" dumpDump}
  >>>
}