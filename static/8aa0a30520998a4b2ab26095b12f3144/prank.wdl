version 1.0

task Prank {
  input {
    Boolean gapGapRate
    Boolean gapGapExt
    Boolean codonCodon
    Boolean dnaDna
    Boolean termTermGap
    Boolean noNoMissing
    Boolean keepKeep
    Boolean iterateIterate
    Boolean onceOnce
    Boolean prunePruneTree
    Boolean prunePruneData
    Boolean useUseLogs
    Boolean translateTranslate
    Boolean mtMtTranslate
    Boolean convertConvert
    Boolean versionVersion
    Boolean verboseVerbose
  }
  command <<<
    prank \
      ~{true="-gaprate" false="" gapGapRate} \
      ~{true="-gapext" false="" gapGapExt} \
      ~{true="-codon" false="" codonCodon} \
      ~{true="-DNA" false="" dnaDna} \
      ~{true="-termgap" false="" termTermGap} \
      ~{true="-nomissing" false="" noNoMissing} \
      ~{true="-keep" false="" keepKeep} \
      ~{true="-iterate" false="" iterateIterate} \
      ~{true="-once" false="" onceOnce} \
      ~{true="-prunetree" false="" prunePruneTree} \
      ~{true="-prunedata" false="" prunePruneData} \
      ~{true="-uselogs" false="" useUseLogs} \
      ~{true="-translate" false="" translateTranslate} \
      ~{true="-mttranslate" false="" mtMtTranslate} \
      ~{true="-convert" false="" convertConvert} \
      ~{true="-version" false="" versionVersion} \
      ~{true="-verbose" false="" verboseVerbose}
  >>>
}