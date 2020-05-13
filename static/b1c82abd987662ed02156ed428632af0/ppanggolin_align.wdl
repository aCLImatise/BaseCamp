version 1.0

task PpanggolinAlign {
  input {
    String panPanGenome
    String outputOutput
    String proteinsProteins
    String annotationAnnotation
    Boolean defragDefrag
    String identityIdentity
    String coverageCoverage
    String translationTranslationTable
    Boolean getGetInfo
    Boolean drawDrawRelated
    String tmpdirTmpdir
    Boolean verboseVerbose
    String logLog
    String cpuCpu
    Boolean forceForce
  }
  command <<<
    ppanggolin align \
      ~{if defined(panPanGenome) then ("--pangenome " +  '"' + panPanGenome + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(proteinsProteins) then ("--proteins " +  '"' + proteinsProteins + '"') else ""} \
      ~{if defined(annotationAnnotation) then ("--annotation " +  '"' + annotationAnnotation + '"') else ""} \
      ~{true="--defrag" false="" defragDefrag} \
      ~{if defined(identityIdentity) then ("--identity " +  '"' + identityIdentity + '"') else ""} \
      ~{if defined(coverageCoverage) then ("--coverage " +  '"' + coverageCoverage + '"') else ""} \
      ~{if defined(translationTranslationTable) then ("--translation_table " +  '"' + translationTranslationTable + '"') else ""} \
      ~{true="--getinfo" false="" getGetInfo} \
      ~{true="--draw_related" false="" drawDrawRelated} \
      ~{if defined(tmpdirTmpdir) then ("--tmpdir " +  '"' + tmpdirTmpdir + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{true="--force" false="" forceForce}
  >>>
}