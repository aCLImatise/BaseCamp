version 1.0

task Spring {
  input {
    Boolean cC
    Boolean dD
    String decompressDecompressRange
    Boolean iI
    Boolean oO
    Boolean wW
    Boolean tT
    Boolean rR
    Boolean noNoQuality
    Boolean noNoIds
    Boolean qQ
    Boolean lL
    Boolean gG
    Boolean fastFastAInput
  }
  command <<<
    spring \
      ~{true="-c" false="" cC} \
      ~{true="-d" false="" dD} \
      ~{if defined(decompressDecompressRange) then ("--decompress-range " +  '"' + decompressDecompressRange + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="-w" false="" wW} \
      ~{true="-t" false="" tT} \
      ~{true="-r" false="" rR} \
      ~{true="--no-quality" false="" noNoQuality} \
      ~{true="--no-ids" false="" noNoIds} \
      ~{true="-q" false="" qQ} \
      ~{true="-l" false="" lL} \
      ~{true="-g" false="" gG} \
      ~{true="--fasta-input" false="" fastFastAInput}
  >>>
}