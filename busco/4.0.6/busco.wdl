version 1.0

task Busco {
  input {
    String iI
    String cpuCpu
    String outOut
    String outOutPath
    String evalueEvalue
    String modeMode
    String lineageLineageDataset
    Boolean forceForce
    String limitLimit
    Boolean longLong
    Boolean quietQuiet
    String augustusAugustusParameters
    String augustusAugustusSpecies
    Boolean autoAutoLineage
    Boolean autoAutoLineageProk
    Boolean autoAutoLineageEUk
    Boolean updateUpdateData
    Boolean offlineOffline
    String configConfig
    Boolean listListDatasets
    String? sequenceSequenceFile
    String? lineageLineage
    String? outputOutputName
    String? modeMode
    String? otherOther
    String? optionsOptions
  }
  command <<<
    busco \
      ~{sequenceSequenceFile} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(outOutPath) then ("--out_path " +  '"' + outOutPath + '"') else ""} \
      ~{if defined(evalueEvalue) then ("--evalue " +  '"' + evalueEvalue + '"') else ""} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(lineageLineageDataset) then ("--lineage_dataset " +  '"' + lineageLineageDataset + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(limitLimit) then ("--limit " +  '"' + limitLimit + '"') else ""} \
      ~{true="--long" false="" longLong} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(augustusAugustusParameters) then ("--augustus_parameters " +  '"' + augustusAugustusParameters + '"') else ""} \
      ~{if defined(augustusAugustusSpecies) then ("--augustus_species " +  '"' + augustusAugustusSpecies + '"') else ""} \
      ~{true="--auto-lineage" false="" autoAutoLineage} \
      ~{true="--auto-lineage-prok" false="" autoAutoLineageProk} \
      ~{true="--auto-lineage-euk" false="" autoAutoLineageEUk} \
      ~{true="--update-data" false="" updateUpdateData} \
      ~{true="--offline" false="" offlineOffline} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--list-datasets" false="" listListDatasets} \
      ~{lineageLineage} \
      ~{outputOutputName} \
      ~{modeMode} \
      ~{otherOther} \
      ~{optionsOptions}
  >>>
}