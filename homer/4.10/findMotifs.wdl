version 1.0

task FindMotifs.pl {
  input {
    Boolean lenLen
    String bgBg
    Boolean startStart
    Boolean endEnd
    Boolean rnaRna
    Boolean maskMask
    Boolean sS
    Boolean misMis
    Boolean noNoConvert
    Boolean norevNorevOpp
    Boolean noNoMotif
    String findFind
    Boolean enhancersEnhancersOnly
    String fastFastAbg
    Boolean mMSet
    Boolean basicBasic
    Boolean bitsBits
    Boolean noNoCheck
    String mMCheck
    Boolean noNoKnown
    String mMKnown
    Boolean noNoFacts
    Boolean seqSeqLogo
    Boolean bB
    Boolean noNoGo
    Boolean humanHumanGo
    String ontologyOntology
    Boolean noNoWeight
    Boolean noNoRedun
    Boolean gG
    Boolean cpgCpg
    Boolean randRand
    String maskMaskMotif
    String optOpt
    Boolean peaksPeaks
    Boolean nowarnNowarn
    Boolean keepKeepFiles
    Boolean dumpDumpFastA
    Boolean minMin
    Boolean maxMax
    Boolean reuseReuse
    Boolean fdrFdr
    Boolean homeHomeR2
    Boolean nlenNlen
    Boolean olenOlen
    Boolean pP
    Boolean eE
    Boolean cacheCache
    Boolean quickQuickMask
    Boolean homeHomeR1
    Boolean minMinLp
    Boolean floatFloat
    Boolean homeHomeR1
    Boolean depthDepth
  }
  command <<<
    findMotifs.pl \
      ~{true="-len" false="" lenLen} \
      ~{if defined(bgBg) then ("-bg " +  '"' + bgBg + '"') else ""} \
      ~{true="-start" false="" startStart} \
      ~{true="-end" false="" endEnd} \
      ~{true="-rna" false="" rnaRna} \
      ~{true="-mask" false="" maskMask} \
      ~{true="-S" false="" sS} \
      ~{true="-mis" false="" misMis} \
      ~{true="-noconvert" false="" noNoConvert} \
      ~{true="-norevopp" false="" norevNorevOpp} \
      ~{true="-nomotif" false="" noNoMotif} \
      ~{if defined(findFind) then ("-find " +  '"' + findFind + '"') else ""} \
      ~{true="-enhancersOnly" false="" enhancersEnhancersOnly} \
      ~{if defined(fastFastAbg) then ("-fastaBg " +  '"' + fastFastAbg + '"') else ""} \
      ~{true="-mset" false="" mMSet} \
      ~{true="-basic" false="" basicBasic} \
      ~{true="-bits" false="" bitsBits} \
      ~{true="-nocheck" false="" noNoCheck} \
      ~{if defined(mMCheck) then ("-mcheck " +  '"' + mMCheck + '"') else ""} \
      ~{true="-noknown" false="" noNoKnown} \
      ~{if defined(mMKnown) then ("-mknown " +  '"' + mMKnown + '"') else ""} \
      ~{true="-nofacts" false="" noNoFacts} \
      ~{true="-seqlogo" false="" seqSeqLogo} \
      ~{true="-b" false="" bB} \
      ~{true="-nogo" false="" noNoGo} \
      ~{true="-humanGO" false="" humanHumanGo} \
      ~{if defined(ontologyOntology) then ("-ontology " +  '"' + ontologyOntology + '"') else ""} \
      ~{true="-noweight" false="" noNoWeight} \
      ~{true="-noredun" false="" noNoRedun} \
      ~{true="-g" false="" gG} \
      ~{true="-cpg" false="" cpgCpg} \
      ~{true="-rand" false="" randRand} \
      ~{if defined(maskMaskMotif) then ("-maskMotif " +  '"' + maskMaskMotif + '"') else ""} \
      ~{if defined(optOpt) then ("-opt " +  '"' + optOpt + '"') else ""} \
      ~{true="-peaks" false="" peaksPeaks} \
      ~{true="-nowarn" false="" nowarnNowarn} \
      ~{true="-keepFiles" false="" keepKeepFiles} \
      ~{true="-dumpFasta" false="" dumpDumpFastA} \
      ~{true="-min" false="" minMin} \
      ~{true="-max" false="" maxMax} \
      ~{true="-reuse" false="" reuseReuse} \
      ~{true="-fdr" false="" fdrFdr} \
      ~{true="-homer2" false="" homeHomeR2} \
      ~{true="-nlen" false="" nlenNlen} \
      ~{true="-olen" false="" olenOlen} \
      ~{true="-p" false="" pP} \
      ~{true="-e" false="" eE} \
      ~{true="-cache" false="" cacheCache} \
      ~{true="-quickMask" false="" quickQuickMask} \
      ~{true="-homer1" false="" homeHomeR1} \
      ~{true="-minlp" false="" minMinLp} \
      ~{true="-float" false="" floatFloat} \
      ~{true="-homer1" false="" homeHomeR1} \
      ~{true="-depth" false="" depthDepth}
  >>>
}