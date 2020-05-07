version 1.0

task OpalWorkflow.py {
  input {
    String inputInputDir
    String outputOutputDir
    String goldGoldStandardFile
    String yamlYaml
    String volumeVolume
    Boolean noNoNormalization
    Boolean plotPlotAbundances
    String labelsLabels
    String descDesc
    String? imagesImages
  }
  command <<<
    opal_workflow.py \
      ~{imagesImages} \
      ~{if defined(inputInputDir) then ("--input_dir " +  '"' + inputInputDir + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(goldGoldStandardFile) then ("--gold_standard_file " +  '"' + goldGoldStandardFile + '"') else ""} \
      ~{if defined(yamlYaml) then ("--yaml " +  '"' + yamlYaml + '"') else ""} \
      ~{if defined(volumeVolume) then ("--volume " +  '"' + volumeVolume + '"') else ""} \
      ~{true="--no_normalization" false="" noNoNormalization} \
      ~{true="--plot_abundances" false="" plotPlotAbundances} \
      ~{if defined(labelsLabels) then ("--labels " +  '"' + labelsLabels + '"') else ""} \
      ~{if defined(descDesc) then ("--desc " +  '"' + descDesc + '"') else ""}
  >>>
}