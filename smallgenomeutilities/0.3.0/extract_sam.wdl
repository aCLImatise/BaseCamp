version 1.0

task ExtractSam {
  input {
    String tT
    Boolean vV
    String iI
    String oO
    Float mfMf
    Int mcMc
    String prefixPrefix
    Float rgRg
    Boolean rogRog
    Boolean pP
    Boolean tT
    String? msaMsaFile
  }
  command <<<
    extract_sam \
      ~{msaMsaFile} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(mfMf) then ("--mf " +  '"' + mfMf + '"') else ""} \
      ~{if defined(mcMc) then ("--mc " +  '"' + mcMc + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(rgRg) then ("--rg " +  '"' + rgRg + '"') else ""} \
      ~{true="--rog" false="" rogRog} \
      ~{true="-p" false="" pP} \
      ~{true="-T" false="" tT}
  >>>
}