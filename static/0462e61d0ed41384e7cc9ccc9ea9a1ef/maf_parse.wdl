version 1.0

task MafParse {
  input {
    Boolean prettyPretty
    String startStart
    String endEnd
    String seqsSeqs
    Boolean excludeExclude
    String orderOrder
    Boolean noNoRefseq
    Int splitSplit
    String outOutRoot
    String outOutRootDigits
    String byByGroup
    String maskMaskBases
    File maskedMaskedFile
    String maskMaskFeatures
    Boolean stripStripILines
    Boolean stripStripELines
    String? optionsOptions
    String? inInFile
  }
  command <<<
    maf_parse \
      ~{optionsOptions} \
      ~{true="--pretty" false="" prettyPretty} \
      ~{if defined(startStart) then ("--start " +  '"' + startStart + '"') else ""} \
      ~{if defined(endEnd) then ("--end " +  '"' + endEnd + '"') else ""} \
      ~{if defined(seqsSeqs) then ("--seqs " +  '"' + seqsSeqs + '"') else ""} \
      ~{true="--exclude" false="" excludeExclude} \
      ~{if defined(orderOrder) then ("--order " +  '"' + orderOrder + '"') else ""} \
      ~{true="--no-refseq" false="" noNoRefseq} \
      ~{if defined(splitSplit) then ("--split " +  '"' + splitSplit + '"') else ""} \
      ~{if defined(outOutRoot) then ("--out-root " +  '"' + outOutRoot + '"') else ""} \
      ~{if defined(outOutRootDigits) then ("--out-root-digits " +  '"' + outOutRootDigits + '"') else ""} \
      ~{if defined(byByGroup) then ("--by-group " +  '"' + byByGroup + '"') else ""} \
      ~{if defined(maskMaskBases) then ("--mask-bases " +  '"' + maskMaskBases + '"') else ""} \
      ~{if defined(maskedMaskedFile) then ("--masked-file " +  '"' + maskedMaskedFile + '"') else ""} \
      ~{if defined(maskMaskFeatures) then ("--mask-features " +  '"' + maskMaskFeatures + '"') else ""} \
      ~{true="--strip-i-lines" false="" stripStripILines} \
      ~{true="--strip-e-lines" false="" stripStripELines} \
      ~{inInFile}
  >>>
}