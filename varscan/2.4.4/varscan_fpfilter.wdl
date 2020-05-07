version 1.0

task VarscanFpfilter {
  input {
    Boolean minMinVarCount
    Boolean minMinVarCountLc
    Boolean minMinVarFreq
    Boolean maxMaxSomaticP
    Boolean maxMaxSomaticPDepth
    Boolean minMinRefReadPos
    Boolean minMinVarReadPos
    Boolean minMinRefDist3
    Boolean minMinVarDist3
    Boolean minMinStrandedNess
    Boolean minMinStrandReads
    Boolean minMinRefBaseQual
    Boolean minMinVarBaseQual
    Boolean maxMaxBaseQualDiff
    Boolean minMinRefAvgRl
    Boolean minMinVarAvgRl
    Boolean maxMaxRlDiff
    Boolean maxMaxRefMmQs
    Boolean maxMaxVarMmQs
    Boolean minMinMmQsDiff
    Boolean maxMaxMmQsDiff
    Boolean minMinRefMapQual
    Boolean minMinVarMapQual
    Boolean maxMaxMapQualDiff
  }
  command <<<
    varscan fpfilter \
      ~{true="--min-var-count" false="" minMinVarCount} \
      ~{true="--min-var-count-lc" false="" minMinVarCountLc} \
      ~{true="--min-var-freq" false="" minMinVarFreq} \
      ~{true="--max-somatic-p" false="" maxMaxSomaticP} \
      ~{true="--max-somatic-p-depth" false="" maxMaxSomaticPDepth} \
      ~{true="--min-ref-readpos" false="" minMinRefReadPos} \
      ~{true="--min-var-readpos" false="" minMinVarReadPos} \
      ~{true="--min-ref-dist3" false="" minMinRefDist3} \
      ~{true="--min-var-dist3" false="" minMinVarDist3} \
      ~{true="--min-strandedness" false="" minMinStrandedNess} \
      ~{true="--min-strand-reads" false="" minMinStrandReads} \
      ~{true="--min-ref-basequal" false="" minMinRefBaseQual} \
      ~{true="--min-var-basequal" false="" minMinVarBaseQual} \
      ~{true="--max-basequal-diff" false="" maxMaxBaseQualDiff} \
      ~{true="--min-ref-avgrl" false="" minMinRefAvgRl} \
      ~{true="--min-var-avgrl" false="" minMinVarAvgRl} \
      ~{true="--max-rl-diff" false="" maxMaxRlDiff} \
      ~{true="--max-ref-mmqs" false="" maxMaxRefMmQs} \
      ~{true="--max-var-mmqs" false="" maxMaxVarMmQs} \
      ~{true="--min-mmqs-diff" false="" minMinMmQsDiff} \
      ~{true="--max-mmqs-diff" false="" maxMaxMmQsDiff} \
      ~{true="--min-ref-mapqual" false="" minMinRefMapQual} \
      ~{true="--min-var-mapqual" false="" minMinVarMapQual} \
      ~{true="--max-mapqual-diff" false="" maxMaxMapQualDiff}
  >>>
}