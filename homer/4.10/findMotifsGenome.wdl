version 1.0

task FindMotifsGenome.pl {
  input {
    Boolean lenLen
    Boolean sizeSize
    Boolean sS
    Boolean misMis
    Boolean norevNorevOpp
    Boolean noNoMotif
    Boolean rnaRna
    String findFind
    Boolean mMSet
    Boolean basicBasic
    Boolean bitsBits
    Boolean noNoCheck
    String mMCheck
    Boolean floatFloat
    Boolean noNoKnown
    String mMKnown
    Boolean noNoFacts
    Boolean seqSeqLogo
    Boolean nN
    Boolean localLocal
    Boolean redundantRedundant
    Boolean maxMaxN
    String maskMaskMotif
    String optOpt
    Boolean randRand
    String refRef
    Boolean oligoOligo
    Boolean dumpDumpFastA
    Boolean prePreParse
    Directory prePreParsedDir
    Boolean keepKeepFiles
    Boolean fdrFdr
    Boolean homeHomeR2
    Boolean nlenNlen
    Boolean olenOlen
    Boolean pP
    Boolean eE
    Boolean cacheCache
    Boolean quickQuickMask
    Boolean minMinLp
    Boolean homeHomeR1
    Boolean depthDepth
  }
  command <<<
    findMotifsGenome.pl \
      ~{true="-len" false="" lenLen} \
      ~{true="-size" false="" sizeSize} \
      ~{true="-S" false="" sS} \
      ~{true="-mis" false="" misMis} \
      ~{true="-norevopp" false="" norevNorevOpp} \
      ~{true="-nomotif" false="" noNoMotif} \
      ~{true="-rna" false="" rnaRna} \
      ~{if defined(findFind) then ("-find " +  '"' + findFind + '"') else ""} \
      ~{true="-mset" false="" mMSet} \
      ~{true="-basic" false="" basicBasic} \
      ~{true="-bits" false="" bitsBits} \
      ~{true="-nocheck" false="" noNoCheck} \
      ~{if defined(mMCheck) then ("-mcheck " +  '"' + mMCheck + '"') else ""} \
      ~{true="-float" false="" floatFloat} \
      ~{true="-noknown" false="" noNoKnown} \
      ~{if defined(mMKnown) then ("-mknown " +  '"' + mMKnown + '"') else ""} \
      ~{true="-nofacts" false="" noNoFacts} \
      ~{true="-seqlogo" false="" seqSeqLogo} \
      ~{true="-N" false="" nN} \
      ~{true="-local" false="" localLocal} \
      ~{true="-redundant" false="" redundantRedundant} \
      ~{true="-maxN" false="" maxMaxN} \
      ~{if defined(maskMaskMotif) then ("-maskMotif " +  '"' + maskMaskMotif + '"') else ""} \
      ~{if defined(optOpt) then ("-opt " +  '"' + optOpt + '"') else ""} \
      ~{true="-rand" false="" randRand} \
      ~{if defined(refRef) then ("-ref " +  '"' + refRef + '"') else ""} \
      ~{true="-oligo" false="" oligoOligo} \
      ~{true="-dumpFasta" false="" dumpDumpFastA} \
      ~{true="-preparse" false="" prePreParse} \
      ~{if defined(prePreParsedDir) then ("-preparsedDir " +  '"' + prePreParsedDir + '"') else ""} \
      ~{true="-keepFiles" false="" keepKeepFiles} \
      ~{true="-fdr" false="" fdrFdr} \
      ~{true="-homer2" false="" homeHomeR2} \
      ~{true="-nlen" false="" nlenNlen} \
      ~{true="-olen" false="" olenOlen} \
      ~{true="-p" false="" pP} \
      ~{true="-e" false="" eE} \
      ~{true="-cache" false="" cacheCache} \
      ~{true="-quickMask" false="" quickQuickMask} \
      ~{true="-minlp" false="" minMinLp} \
      ~{true="-homer1" false="" homeHomeR1} \
      ~{true="-depth" false="" depthDepth}
  >>>
}