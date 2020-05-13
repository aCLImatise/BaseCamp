version 1.0

task SegtoolsGmtkParameters {
  input {
    Boolean clobberClobber
    Boolean quietQuiet
    Boolean noNoPlot
    Boolean noNoGraph
    Boolean createCreateMnemonics
    Boolean allowAllowRegex
    File mnemonicMnemonicFile
    String outdirOutdir
    File trackTrackNameTranslation
    String probProbThreshold
    String quantileQuantileThreshold
    Boolean geneGeneGraph
    String rR
    String? optionsOptions
    String? paramsParamsFile
  }
  command <<<
    segtools-gmtk-parameters \
      ~{optionsOptions} \
      ~{true="--clobber" false="" clobberClobber} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--noplot" false="" noNoPlot} \
      ~{true="--nograph" false="" noNoGraph} \
      ~{true="--create-mnemonics" false="" createCreateMnemonics} \
      ~{true="--allow-regex" false="" allowAllowRegex} \
      ~{if defined(mnemonicMnemonicFile) then ("--mnemonic-file " +  '"' + mnemonicMnemonicFile + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(trackTrackNameTranslation) then ("--trackname-translation " +  '"' + trackTrackNameTranslation + '"') else ""} \
      ~{if defined(probProbThreshold) then ("--prob-threshold " +  '"' + probProbThreshold + '"') else ""} \
      ~{if defined(quantileQuantileThreshold) then ("--quantile-threshold " +  '"' + quantileQuantileThreshold + '"') else ""} \
      ~{true="--gene-graph" false="" geneGeneGraph} \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""} \
      ~{paramsParamsFile}
  >>>
}