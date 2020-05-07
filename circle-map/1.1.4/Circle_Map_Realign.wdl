version 1.0

task CircleMapRealign {
  input {
    Boolean iI
    Boolean qbQbAm
    Boolean sbSbAm
    Boolean fastFastA
    Boolean oO
    Boolean nN
    Boolean pP
    Boolean mM
    Boolean gG
    Boolean eE
    Boolean qQ
    Boolean dD
    Boolean qQ
    Boolean remapRemapSplits
    Boolean sS
    Boolean oO
    Boolean rR
    Boolean iqIq
    Boolean sdSd
    Boolean sS
    Boolean fF
    Boolean pP
    Boolean kK
    Boolean onlyOnlyDiscordantS
    Boolean fF
    Boolean noNoCoverage
    Boolean bB
    Boolean cqCq
    Boolean eE
    Boolean tT
    Boolean dirDir
    Boolean vV
  }
  command <<<
    Circle-Map Realign \
      ~{true="-i" false="" iI} \
      ~{true="-qbam" false="" qbQbAm} \
      ~{true="-sbam" false="" sbSbAm} \
      ~{true="-fasta" false="" fastFastA} \
      ~{true="-o" false="" oO} \
      ~{true="-n" false="" nN} \
      ~{true="-p" false="" pP} \
      ~{true="-m" false="" mM} \
      ~{true="-g" false="" gG} \
      ~{true="-e" false="" eE} \
      ~{true="-q" false="" qQ} \
      ~{true="-d" false="" dD} \
      ~{true="-Q" false="" qQ} \
      ~{true="--remap_splits" false="" remapRemapSplits} \
      ~{true="-S" false="" sS} \
      ~{true="-O" false="" oO} \
      ~{true="-r" false="" rR} \
      ~{true="-iq" false="" iqIq} \
      ~{true="-sd" false="" sdSd} \
      ~{true="-s" false="" sS} \
      ~{true="-f" false="" fF} \
      ~{true="-P" false="" pP} \
      ~{true="-K" false="" kK} \
      ~{true="--only_discordants" false="" onlyOnlyDiscordantS} \
      ~{true="-F" false="" fF} \
      ~{true="--no_coverage" false="" noNoCoverage} \
      ~{true="-b" false="" bB} \
      ~{true="-cq" false="" cqCq} \
      ~{true="-E" false="" eE} \
      ~{true="-t" false="" tT} \
      ~{true="-dir" false="" dirDir} \
      ~{true="-v" false="" vV}
  >>>
}