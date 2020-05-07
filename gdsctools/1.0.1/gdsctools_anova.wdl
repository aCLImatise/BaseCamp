version 1.0

task GdsctoolsAnova {
  input {
    String inputInputIc50
    String inputInputFeatures
    String inputInputDrugDecode
    Directory outputOutputDirectory
    Boolean verboseVerbose
    Boolean doDoNotOpenReport
    String drugDrug
    String featureFeature
    Boolean printPrintDrugNames
    Boolean printPrintFeatureNames
    Boolean printPrintTissueNames
    String tissueTissue
    String fdrFdrThreshold
    Boolean excludeExcludeMsi
    String saveSaveSettings
    String readReadSettings
    Boolean summarySummary
    Boolean testTest
    Boolean noNoHtml
  }
  command <<<
    gdsctools_anova \
      ~{if defined(inputInputIc50) then ("--input-ic50 " +  '"' + inputInputIc50 + '"') else ""} \
      ~{if defined(inputInputFeatures) then ("--input-features " +  '"' + inputInputFeatures + '"') else ""} \
      ~{if defined(inputInputDrugDecode) then ("--input-drug-decode " +  '"' + inputInputDrugDecode + '"') else ""} \
      ~{if defined(outputOutputDirectory) then ("--output-directory " +  '"' + outputOutputDirectory + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--do-not-open-report" false="" doDoNotOpenReport} \
      ~{if defined(drugDrug) then ("--drug " +  '"' + drugDrug + '"') else ""} \
      ~{if defined(featureFeature) then ("--feature " +  '"' + featureFeature + '"') else ""} \
      ~{true="--print-drug-names" false="" printPrintDrugNames} \
      ~{true="--print-feature-names" false="" printPrintFeatureNames} \
      ~{true="--print-tissue-names" false="" printPrintTissueNames} \
      ~{if defined(tissueTissue) then ("--tissue " +  '"' + tissueTissue + '"') else ""} \
      ~{if defined(fdrFdrThreshold) then ("--FDR-threshold " +  '"' + fdrFdrThreshold + '"') else ""} \
      ~{true="--exclude-msi" false="" excludeExcludeMsi} \
      ~{if defined(saveSaveSettings) then ("--save-settings " +  '"' + saveSaveSettings + '"') else ""} \
      ~{if defined(readReadSettings) then ("--read-settings " +  '"' + readReadSettings + '"') else ""} \
      ~{true="--summary" false="" summarySummary} \
      ~{true="--test" false="" testTest} \
      ~{true="--no-html" false="" noNoHtml}
  >>>
}