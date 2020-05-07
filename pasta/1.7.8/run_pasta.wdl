version 1.0

task RunPasta.py {
  input {
    Boolean alignedAligned
    Boolean autoAuto
    String datatypeDatatype
    String exportExportConfig
    String inputInput
    String jobJob
    Boolean keepKeepAlignmentTemps
    Boolean keepKeepTemp
    String missingMissing
    Boolean multilocusMultilocus
    Boolean raRaXmlSearchAfter
    String temporariesTemporaries
    String timesTimesFile
    String treeTreeFile
    Boolean twoTwoPhase
    Boolean untrustedUntrusted
    Boolean noNoBlindModeIsFinal
    Boolean moveMoveToBlindOnWorseScore
    String outputOutputDirectory
    Boolean noNoReturnFinalTreeAndAlignment
    Boolean maxMaxMemMb
    Boolean numNumCpus
    Boolean maskMaskGapPySites
    Boolean startStartTreeSearchFromCurrent
    String alignerAligner
    String mergerMerger
    String treeTreeEstimator
  }
  command <<<
    run_pasta.py \
      ~{true="--aligned" false="" alignedAligned} \
      ~{true="--auto" false="" autoAuto} \
      ~{if defined(datatypeDatatype) then ("--datatype " +  '"' + datatypeDatatype + '"') else ""} \
      ~{if defined(exportExportConfig) then ("--exportconfig " +  '"' + exportExportConfig + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(jobJob) then ("--job " +  '"' + jobJob + '"') else ""} \
      ~{true="--keepalignmenttemps" false="" keepKeepAlignmentTemps} \
      ~{true="--keeptemp" false="" keepKeepTemp} \
      ~{if defined(missingMissing) then ("--missing " +  '"' + missingMissing + '"') else ""} \
      ~{true="--multilocus" false="" multilocusMultilocus} \
      ~{true="--raxml-search-after" false="" raRaXmlSearchAfter} \
      ~{if defined(temporariesTemporaries) then ("--temporaries " +  '"' + temporariesTemporaries + '"') else ""} \
      ~{if defined(timesTimesFile) then ("--timesfile " +  '"' + timesTimesFile + '"') else ""} \
      ~{if defined(treeTreeFile) then ("--treefile " +  '"' + treeTreeFile + '"') else ""} \
      ~{true="--two-phase" false="" twoTwoPhase} \
      ~{true="--untrusted" false="" untrustedUntrusted} \
      ~{true="--no-blind-mode-is-final" false="" noNoBlindModeIsFinal} \
      ~{true="--move-to-blind-on-worse-score" false="" moveMoveToBlindOnWorseScore} \
      ~{if defined(outputOutputDirectory) then ("--output-directory " +  '"' + outputOutputDirectory + '"') else ""} \
      ~{true="--no-return-final-tree-and-alignment" false="" noNoReturnFinalTreeAndAlignment} \
      ~{true="--max-mem-mb" false="" maxMaxMemMb} \
      ~{true="--num-cpus" false="" numNumCpus} \
      ~{true="--mask-gappy-sites" false="" maskMaskGapPySites} \
      ~{true="--start-tree-search-from-current" false="" startStartTreeSearchFromCurrent} \
      ~{if defined(alignerAligner) then ("--aligner " +  '"' + alignerAligner + '"') else ""} \
      ~{if defined(mergerMerger) then ("--merger " +  '"' + mergerMerger + '"') else ""} \
      ~{if defined(treeTreeEstimator) then ("--tree-estimator " +  '"' + treeTreeEstimator + '"') else ""}
  >>>
}