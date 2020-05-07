version 1.0

task HisatgenotypeExtractVars.py {
  input {
    String baseBase
    String locusLocusList
    Int interInterGap
    Int intraIntraGap
    Boolean wholeWholeHaplotype
    Int minMinVarFreq
    String extExtSeq
    Boolean leftLeftShift
    Boolean noNoPartial
    Boolean verboseVerbose
  }
  command <<<
    hisatgenotype_extract_vars.py \
      ~{if defined(baseBase) then ("--base " +  '"' + baseBase + '"') else ""} \
      ~{if defined(locusLocusList) then ("--locus-list " +  '"' + locusLocusList + '"') else ""} \
      ~{if defined(interInterGap) then ("--inter-gap " +  '"' + interInterGap + '"') else ""} \
      ~{if defined(intraIntraGap) then ("--intra-gap " +  '"' + intraIntraGap + '"') else ""} \
      ~{true="--whole-haplotype" false="" wholeWholeHaplotype} \
      ~{if defined(minMinVarFreq) then ("--min-var-freq " +  '"' + minMinVarFreq + '"') else ""} \
      ~{if defined(extExtSeq) then ("--ext-seq " +  '"' + extExtSeq + '"') else ""} \
      ~{true="--leftshift" false="" leftLeftShift} \
      ~{true="--no-partial" false="" noNoPartial} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}