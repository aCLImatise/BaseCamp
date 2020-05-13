version 1.0

task Hisat2AlignL {
  input {
    Boolean phred33Phred33
    Boolean phred64Phred64
    Boolean intIntQuals
    Boolean fastFast
    Boolean sensitiveSensitive
    Boolean veryVerySensitive
    Int bowtie2Bowtie2Dp
    String nNCeil
    Boolean ignoreIgnoreQuals
    Boolean noNoFw
    Boolean norcNorc
    Boolean noNoRepeatIndex
    Int penPenCanSplice
    Int penPenNonCanSplice
    String penPenCanIntronLen
    String penPenNonCanIntronLen
    Int minMinIntronLen
    Int maxMaxIntronLen
    File knownKnownSpliceSiteInFile
    File novelNovelSpliceSiteOutfile
    File novelNovelSpliceSiteInFile
    Boolean noNoTempSpliceSite
    Boolean noNoSplicedAlignment
    String rnaRnaStrandNess
    Boolean tmoTmo
    Boolean dtaDta
    Boolean dtaDtaCufflinks
    Boolean avoidAvoidPseudogene
    Boolean noNoTemplateLenAdjustment
    Int mpMp
    Int spSp
    Boolean noNoSoftClip
    Int npNp
    Int rdgRdg
    Int rfgRfg
    String scoreScoreMin
    Int kK
    Int maxMaxSeeds
    Boolean aA
    Boolean repeatRepeat
    Boolean iI
    Boolean xX
    Boolean frFr
    Boolean noNoMixed
    Boolean noNoDiscordant
    Boolean tT
    File summarySummaryFile
    Boolean newNewSummary
    Boolean quietQuiet
    File metMetFile
    Boolean metMetStderr
    Int metMet
    Boolean noNoHead
    Boolean noNoSq
    String rgRgId
    String rgRg
    Boolean omitOmitSecSeq
    Boolean oO
    Boolean pP
    Boolean reorderReorder
    Boolean mmMm
    Boolean qcQcFilter
    Int seedSeed
    String nonNonDeterministic
    Boolean removeRemoveChrName
    Boolean addAddChrName
  }
  command <<<
    hisat2-align-l \
      ~{true="--phred33" false="" phred33Phred33} \
      ~{true="--phred64" false="" phred64Phred64} \
      ~{true="--int-quals" false="" intIntQuals} \
      ~{true="--fast" false="" fastFast} \
      ~{true="--sensitive" false="" sensitiveSensitive} \
      ~{true="--very-sensitive" false="" veryVerySensitive} \
      ~{if defined(bowtie2Bowtie2Dp) then ("--bowtie2-dp " +  '"' + bowtie2Bowtie2Dp + '"') else ""} \
      ~{if defined(nNCeil) then ("--n-ceil " +  '"' + nNCeil + '"') else ""} \
      ~{true="--ignore-quals" false="" ignoreIgnoreQuals} \
      ~{true="--nofw" false="" noNoFw} \
      ~{true="--norc" false="" norcNorc} \
      ~{true="--no-repeat-index" false="" noNoRepeatIndex} \
      ~{if defined(penPenCanSplice) then ("--pen-cansplice " +  '"' + penPenCanSplice + '"') else ""} \
      ~{if defined(penPenNonCanSplice) then ("--pen-noncansplice " +  '"' + penPenNonCanSplice + '"') else ""} \
      ~{if defined(penPenCanIntronLen) then ("--pen-canintronlen " +  '"' + penPenCanIntronLen + '"') else ""} \
      ~{if defined(penPenNonCanIntronLen) then ("--pen-noncanintronlen " +  '"' + penPenNonCanIntronLen + '"') else ""} \
      ~{if defined(minMinIntronLen) then ("--min-intronlen " +  '"' + minMinIntronLen + '"') else ""} \
      ~{if defined(maxMaxIntronLen) then ("--max-intronlen " +  '"' + maxMaxIntronLen + '"') else ""} \
      ~{if defined(knownKnownSpliceSiteInFile) then ("--known-splicesite-infile " +  '"' + knownKnownSpliceSiteInFile + '"') else ""} \
      ~{if defined(novelNovelSpliceSiteOutfile) then ("--novel-splicesite-outfile " +  '"' + novelNovelSpliceSiteOutfile + '"') else ""} \
      ~{if defined(novelNovelSpliceSiteInFile) then ("--novel-splicesite-infile " +  '"' + novelNovelSpliceSiteInFile + '"') else ""} \
      ~{true="--no-temp-splicesite" false="" noNoTempSpliceSite} \
      ~{true="--no-spliced-alignment" false="" noNoSplicedAlignment} \
      ~{if defined(rnaRnaStrandNess) then ("--rna-strandness " +  '"' + rnaRnaStrandNess + '"') else ""} \
      ~{true="--tmo" false="" tmoTmo} \
      ~{true="--dta" false="" dtaDta} \
      ~{true="--dta-cufflinks" false="" dtaDtaCufflinks} \
      ~{true="--avoid-pseudogene" false="" avoidAvoidPseudogene} \
      ~{true="--no-templatelen-adjustment" false="" noNoTemplateLenAdjustment} \
      ~{if defined(mpMp) then ("--mp " +  '"' + mpMp + '"') else ""} \
      ~{if defined(spSp) then ("--sp " +  '"' + spSp + '"') else ""} \
      ~{true="--no-softclip" false="" noNoSoftClip} \
      ~{if defined(npNp) then ("--np " +  '"' + npNp + '"') else ""} \
      ~{if defined(rdgRdg) then ("--rdg " +  '"' + rdgRdg + '"') else ""} \
      ~{if defined(rfgRfg) then ("--rfg " +  '"' + rfgRfg + '"') else ""} \
      ~{if defined(scoreScoreMin) then ("--score-min " +  '"' + scoreScoreMin + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(maxMaxSeeds) then ("--max-seeds " +  '"' + maxMaxSeeds + '"') else ""} \
      ~{true="-a" false="" aA} \
      ~{true="--repeat" false="" repeatRepeat} \
      ~{true="-I" false="" iI} \
      ~{true="-X" false="" xX} \
      ~{true="--fr" false="" frFr} \
      ~{true="--no-mixed" false="" noNoMixed} \
      ~{true="--no-discordant" false="" noNoDiscordant} \
      ~{true="-t" false="" tT} \
      ~{if defined(summarySummaryFile) then ("--summary-file " +  '"' + summarySummaryFile + '"') else ""} \
      ~{true="--new-summary" false="" newNewSummary} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(metMetFile) then ("--met-file " +  '"' + metMetFile + '"') else ""} \
      ~{true="--met-stderr" false="" metMetStderr} \
      ~{if defined(metMet) then ("--met " +  '"' + metMet + '"') else ""} \
      ~{true="--no-head" false="" noNoHead} \
      ~{true="--no-sq" false="" noNoSq} \
      ~{if defined(rgRgId) then ("--rg-id " +  '"' + rgRgId + '"') else ""} \
      ~{if defined(rgRg) then ("--rg " +  '"' + rgRg + '"') else ""} \
      ~{true="--omit-sec-seq" false="" omitOmitSecSeq} \
      ~{true="-o" false="" oO} \
      ~{true="-p" false="" pP} \
      ~{true="--reorder" false="" reorderReorder} \
      ~{true="--mm" false="" mmMm} \
      ~{true="--qc-filter" false="" qcQcFilter} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(nonNonDeterministic) then ("--non-deterministic " +  '"' + nonNonDeterministic + '"') else ""} \
      ~{true="--remove-chrname" false="" removeRemoveChrName} \
      ~{true="--add-chrname" false="" addAddChrName}
  >>>
}