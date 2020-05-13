version 1.0

task NGSDExportSamples {
  input {
    File outOut
    String sampleSample
    String speciesSpecies
    Boolean noNoBadSamples
    Boolean noNoTumor
    Boolean noNoFfPe
    Boolean withWithMerged
    String projectProject
    String systemSystem
    String runRun
    Boolean runRunFinished
    String runRunDevice
    Boolean noNoBadRuns
    Boolean addAddQc
    Boolean addAddOutcome
    Boolean addAddDiseaseDetails
    Boolean addAddPath
    Boolean addAddReportConfig
    Boolean testTest
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    NGSDExportSamples \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(sampleSample) then ("-sample " +  '"' + sampleSample + '"') else ""} \
      ~{if defined(speciesSpecies) then ("-species " +  '"' + speciesSpecies + '"') else ""} \
      ~{true="-no_bad_samples" false="" noNoBadSamples} \
      ~{true="-no_tumor" false="" noNoTumor} \
      ~{true="-no_ffpe" false="" noNoFfPe} \
      ~{true="-with_merged" false="" withWithMerged} \
      ~{if defined(projectProject) then ("-project " +  '"' + projectProject + '"') else ""} \
      ~{if defined(systemSystem) then ("-system " +  '"' + systemSystem + '"') else ""} \
      ~{if defined(runRun) then ("-run " +  '"' + runRun + '"') else ""} \
      ~{true="-run_finished" false="" runRunFinished} \
      ~{if defined(runRunDevice) then ("-run_device " +  '"' + runRunDevice + '"') else ""} \
      ~{true="-no_bad_runs" false="" noNoBadRuns} \
      ~{true="-add_qc" false="" addAddQc} \
      ~{true="-add_outcome" false="" addAddOutcome} \
      ~{true="-add_disease_details" false="" addAddDiseaseDetails} \
      ~{true="-add_path" false="" addAddPath} \
      ~{true="-add_report_config" false="" addAddReportConfig} \
      ~{true="-test" false="" testTest} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}