version 1.0

task Bowtie2 {
  input {
    Boolean trimTrimTo
    Boolean phred33Phred33
    Boolean phred64Phred64
    Boolean intIntQuals
    Boolean veryVeryFast
    Boolean fastFast
    Boolean sensitiveSensitive
    Boolean veryVerySensitive
    Boolean veryVeryFastLocal
    Boolean fastFastLocal
    Boolean sensitiveSensitiveLocal
    Boolean veryVerySensitiveLocal
    Boolean localLocal
    Int maMa
    Int mpMp
    Int npNp
    Int rdgRdg
    Int rfgRfg
    String scoreScoreMin
    Boolean aA
    Int dD
    Int rR
    Boolean iI
    Boolean xX
    Boolean frFr
    Boolean noNoMixed
    Boolean noNoDiscordant
    Boolean dovetailDovetail
    Boolean noNoContain
    Boolean noNoOverlap
    Boolean preservePreserveTags
    Boolean xeqXeq
    String softSoftClippedUnmappedTlen
    Boolean pP
    Boolean reorderReorder
    Boolean mmMm
    Boolean qcQcFilter
    Int seedSeed
    String nonNonDeterministic
  }
  command <<<
    bowtie2 \
      ~{true="--trim-to" false="" trimTrimTo} \
      ~{true="--phred33" false="" phred33Phred33} \
      ~{true="--phred64" false="" phred64Phred64} \
      ~{true="--int-quals" false="" intIntQuals} \
      ~{true="--very-fast" false="" veryVeryFast} \
      ~{true="--fast" false="" fastFast} \
      ~{true="--sensitive" false="" sensitiveSensitive} \
      ~{true="--very-sensitive" false="" veryVerySensitive} \
      ~{true="--very-fast-local" false="" veryVeryFastLocal} \
      ~{true="--fast-local" false="" fastFastLocal} \
      ~{true="--sensitive-local" false="" sensitiveSensitiveLocal} \
      ~{true="--very-sensitive-local" false="" veryVerySensitiveLocal} \
      ~{true="--local" false="" localLocal} \
      ~{if defined(maMa) then ("--ma " +  '"' + maMa + '"') else ""} \
      ~{if defined(mpMp) then ("--mp " +  '"' + mpMp + '"') else ""} \
      ~{if defined(npNp) then ("--np " +  '"' + npNp + '"') else ""} \
      ~{if defined(rdgRdg) then ("--rdg " +  '"' + rdgRdg + '"') else ""} \
      ~{if defined(rfgRfg) then ("--rfg " +  '"' + rfgRfg + '"') else ""} \
      ~{if defined(scoreScoreMin) then ("--score-min " +  '"' + scoreScoreMin + '"') else ""} \
      ~{true="-a" false="" aA} \
      ~{if defined(dD) then ("-D " +  '"' + dD + '"') else ""} \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""} \
      ~{true="-I" false="" iI} \
      ~{true="-X" false="" xX} \
      ~{true="--fr" false="" frFr} \
      ~{true="--no-mixed" false="" noNoMixed} \
      ~{true="--no-discordant" false="" noNoDiscordant} \
      ~{true="--dovetail" false="" dovetailDovetail} \
      ~{true="--no-contain" false="" noNoContain} \
      ~{true="--no-overlap" false="" noNoOverlap} \
      ~{true="--preserve-tags" false="" preservePreserveTags} \
      ~{true="--xeq" false="" xeqXeq} \
      ~{if defined(softSoftClippedUnmappedTlen) then ("--soft-clipped-unmapped-tlen " +  '"' + softSoftClippedUnmappedTlen + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{true="--reorder" false="" reorderReorder} \
      ~{true="--mm" false="" mmMm} \
      ~{true="--qc-filter" false="" qcQcFilter} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(nonNonDeterministic) then ("--non-deterministic " +  '"' + nonNonDeterministic + '"') else ""}
  >>>
}