version 1.0

task Variant {
  input {
    Boolean verboseVerbose
    Boolean noNoOutput
    Boolean rulesRules
    Boolean procProcRegionsFile
    Boolean markMarkAsQcFail
    Boolean outputOutput
    Boolean cramCram
    Boolean bamBam
    Boolean referenceReference
    Boolean stripStripTags
    Boolean stripStripAllTags
    Boolean writeWriteTrimmed
    Boolean qcQcFile
    Boolean maxMaxCoverage
    Boolean minMinPhred
    Boolean regionRegion
    Boolean excludeExcludeRegion
    Boolean linkedLinkedRegion
    Boolean linkedLinkedExcludeRegion
    Boolean regionRegionPad
    Boolean minMinClip
    Boolean maxMaxNBases
    Boolean minMinMapq
    Boolean minMinDel
    Boolean minMinIns
    Boolean minMinLength
    Boolean motifMotif
    Boolean readReadGroup
    Boolean includeIncludeAlnFlag
    Boolean excludeExcludeAlnFlag
  }
  command <<<
    variant \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--no-output" false="" noNoOutput} \
      ~{true="--rules" false="" rulesRules} \
      ~{true="--proc-regions-file" false="" procProcRegionsFile} \
      ~{true="--mark-as-qc-fail" false="" markMarkAsQcFail} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--cram" false="" cramCram} \
      ~{true="--bam" false="" bamBam} \
      ~{true="--reference" false="" referenceReference} \
      ~{true="--strip-tags" false="" stripStripTags} \
      ~{true="--strip-all-tags" false="" stripStripAllTags} \
      ~{true="--write-trimmed" false="" writeWriteTrimmed} \
      ~{true="--qc-file" false="" qcQcFile} \
      ~{true="--max-coverage" false="" maxMaxCoverage} \
      ~{true="--min-phred" false="" minMinPhred} \
      ~{true="--region" false="" regionRegion} \
      ~{true="--exclude-region" false="" excludeExcludeRegion} \
      ~{true="--linked-region" false="" linkedLinkedRegion} \
      ~{true="--linked-exclude-region" false="" linkedLinkedExcludeRegion} \
      ~{true="--region-pad" false="" regionRegionPad} \
      ~{true="--min-clip" false="" minMinClip} \
      ~{true="--max-nbases" false="" maxMaxNBases} \
      ~{true="--min-mapq" false="" minMinMapq} \
      ~{true="--min-del" false="" minMinDel} \
      ~{true="--min-ins" false="" minMinIns} \
      ~{true="--min-length" false="" minMinLength} \
      ~{true="--motif" false="" motifMotif} \
      ~{true="--read-group" false="" readReadGroup} \
      ~{true="--include-aln-flag" false="" includeIncludeAlnFlag} \
      ~{true="--exclude-aln-flag" false="" excludeExcludeAlnFlag}
  >>>
}