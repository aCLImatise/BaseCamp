version 1.0

task CircleMapBam2bam {
  input {
    Boolean iI
    Boolean qbQbAm
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
    Boolean iqIq
    Boolean sdSd
    Boolean sS
    Boolean pP
    Boolean kK
    Boolean onlyOnlyDiscordantS
    Boolean tT
    Boolean dirDir
    Boolean vV
    String? realignRealign
  }
  command <<<
    Circle-Map bam2bam \
      ~{realignRealign} \
      ~{true="-i" false="" iI} \
      ~{true="-qbam" false="" qbQbAm} \
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
      ~{true="-iq" false="" iqIq} \
      ~{true="-sd" false="" sdSd} \
      ~{true="-s" false="" sS} \
      ~{true="-P" false="" pP} \
      ~{true="-K" false="" kK} \
      ~{true="--only_discordants" false="" onlyOnlyDiscordantS} \
      ~{true="-t" false="" tT} \
      ~{true="-dir" false="" dirDir} \
      ~{true="-v" false="" vV}
  >>>
}