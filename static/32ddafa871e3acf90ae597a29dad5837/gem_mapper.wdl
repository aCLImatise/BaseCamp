version 1.0

task GemMapper {
  input {
    File inputInput
    Boolean i1I1
    Boolean i2I2
    Boolean gzipGzipInput
    Boolean bzipBzipInput
    String outputOutput
    Boolean gzipGzipOutput
    Boolean bzipBzipOutput
    File reportReportFile
    Boolean mappingMappingMode
    Boolean alignmentAlignmentMaxError
    Boolean alignmentAlignmentGlobalMinIdentity
    Boolean alignmentAlignmentGlobalMinScore
    Boolean alignmentAlignmentLocal
    Boolean alignmentAlignmentLocalMinIdentity
    Boolean alignmentAlignmentLocalMinScore
    String pairedPairedEndAlignment
    String maxMaxTemplateLength
    Boolean discordantDiscordantPairSearch
    Boolean bisulfiteBisulfiteRead
    String underUnderConversionSequence
    String overOverConversionSequence
    String controlControlSequence
    String gapGapAffinePenalties
    String maxMaxReportedMatches
    Boolean outputOutputFormat
    Boolean samSamCompact
    String samSamReadGroupHeader
    String threadsThreads
    Boolean verboseVerbose
  }
  command <<<
    gem-mapper \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{true="--i1" false="" i1I1} \
      ~{true="--i2" false="" i2I2} \
      ~{true="--gzip-input" false="" gzipGzipInput} \
      ~{true="--bzip-input" false="" bzipBzipInput} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--gzip-output" false="" gzipGzipOutput} \
      ~{true="--bzip-output" false="" bzipBzipOutput} \
      ~{if defined(reportReportFile) then ("--report-file " +  '"' + reportReportFile + '"') else ""} \
      ~{true="--mapping-mode" false="" mappingMappingMode} \
      ~{true="--alignment-max-error" false="" alignmentAlignmentMaxError} \
      ~{true="--alignment-global-min-identity" false="" alignmentAlignmentGlobalMinIdentity} \
      ~{true="--alignment-global-min-score" false="" alignmentAlignmentGlobalMinScore} \
      ~{true="--alignment-local" false="" alignmentAlignmentLocal} \
      ~{true="--alignment-local-min-identity" false="" alignmentAlignmentLocalMinIdentity} \
      ~{true="--alignment-local-min-score" false="" alignmentAlignmentLocalMinScore} \
      ~{if defined(pairedPairedEndAlignment) then ("--paired-end-alignment " +  '"' + pairedPairedEndAlignment + '"') else ""} \
      ~{if defined(maxMaxTemplateLength) then ("--max-template-length " +  '"' + maxMaxTemplateLength + '"') else ""} \
      ~{true="--discordant-pair-search" false="" discordantDiscordantPairSearch} \
      ~{true="--bisulfite-read" false="" bisulfiteBisulfiteRead} \
      ~{if defined(underUnderConversionSequence) then ("--underconversion_sequence " +  '"' + underUnderConversionSequence + '"') else ""} \
      ~{if defined(overOverConversionSequence) then ("--overconversion_sequence " +  '"' + overOverConversionSequence + '"') else ""} \
      ~{if defined(controlControlSequence) then ("--control_sequence " +  '"' + controlControlSequence + '"') else ""} \
      ~{if defined(gapGapAffinePenalties) then ("--gap-affine-penalties " +  '"' + gapGapAffinePenalties + '"') else ""} \
      ~{if defined(maxMaxReportedMatches) then ("--max-reported-matches " +  '"' + maxMaxReportedMatches + '"') else ""} \
      ~{true="--output-format" false="" outputOutputFormat} \
      ~{true="--sam-compact" false="" samSamCompact} \
      ~{if defined(samSamReadGroupHeader) then ("--sam-read-group-header " +  '"' + samSamReadGroupHeader + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}