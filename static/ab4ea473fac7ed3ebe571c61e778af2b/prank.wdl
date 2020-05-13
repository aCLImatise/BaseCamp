version 1.0

task Prank {
  input {
    Boolean fF
    Boolean gapGapRate
    Boolean gapGapExt
    Boolean codonCodon
    Boolean dnaDna
    Boolean termTermGap
    Boolean noNoMissing
    Boolean eE
    Boolean noNoPost
    Boolean onceOnce
    Boolean twiceTwice
    Boolean useUseLogs
    Boolean translateTranslate
    Boolean mtMtTranslate
    Boolean maxMaxPairDist
    Boolean convertConvert
  }
  command <<<
    prank \
      ~{true="-F" false="" fF} \
      ~{true="-gaprate" false="" gapGapRate} \
      ~{true="-gapext" false="" gapGapExt} \
      ~{true="-codon" false="" codonCodon} \
      ~{true="-DNA" false="" dnaDna} \
      ~{true="-termgap" false="" termTermGap} \
      ~{true="-nomissing" false="" noNoMissing} \
      ~{true="-e" false="" eE} \
      ~{true="-nopost" false="" noNoPost} \
      ~{true="-once" false="" onceOnce} \
      ~{true="-twice" false="" twiceTwice} \
      ~{true="-uselogs" false="" useUseLogs} \
      ~{true="-translate" false="" translateTranslate} \
      ~{true="-mttranslate" false="" mtMtTranslate} \
      ~{true="-maxpairdist" false="" maxMaxPairDist} \
      ~{true="-convert" false="" convertConvert}
  >>>
}