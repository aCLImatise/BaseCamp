version 1.0

task Opal.py {
  input {
    String goldGoldStandardFile
    String outputOutputDir
    Boolean noNoNormalization
    Boolean plotPlotAbundances
    String labelsLabels
    String timeTime
    String memoryMemory
    String descDesc
    String ranksRanks
    Boolean silentSilent
    String? profilesProfilesFiles
  }
  command <<<
    opal.py \
      ~{profilesProfilesFiles} \
      ~{if defined(goldGoldStandardFile) then ("--gold_standard_file " +  '"' + goldGoldStandardFile + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{true="--no_normalization" false="" noNoNormalization} \
      ~{true="--plot_abundances" false="" plotPlotAbundances} \
      ~{if defined(labelsLabels) then ("--labels " +  '"' + labelsLabels + '"') else ""} \
      ~{if defined(timeTime) then ("--time " +  '"' + timeTime + '"') else ""} \
      ~{if defined(memoryMemory) then ("--memory " +  '"' + memoryMemory + '"') else ""} \
      ~{if defined(descDesc) then ("--desc " +  '"' + descDesc + '"') else ""} \
      ~{if defined(ranksRanks) then ("--ranks " +  '"' + ranksRanks + '"') else ""} \
      ~{true="--silent" false="" silentSilent}
  >>>
}