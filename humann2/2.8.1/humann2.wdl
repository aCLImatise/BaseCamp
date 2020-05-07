version 1.0

task Humann2 {
  input {
    String bowtie2Bowtie2
    String uUSearch
    String rapRapSearch
    String diamondDiamond
    String taxonomicTaxonomicProfile
    String idIdMapping
    String translatedTranslatedAlignment
    String xXIpe
    String minMinPath
    String pickPickFrames
    String gapGapFill
    String outputOutputFormat
    Boolean outputOutputMaxDecimals
    String outputOutputBasename
    Boolean removeRemoveStratifiedOutput
    Boolean removeRemoveColumnDescriptionOutput
    Boolean inputInputFormat
    File pathwaysPathwaysDatabase
    String pathwaysPathways
    String memoryMemoryUse
  }
  command <<<
    humann2 \
      ~{if defined(bowtie2Bowtie2) then ("--bowtie2 " +  '"' + bowtie2Bowtie2 + '"') else ""} \
      ~{if defined(uUSearch) then ("--usearch " +  '"' + uUSearch + '"') else ""} \
      ~{if defined(rapRapSearch) then ("--rapsearch " +  '"' + rapRapSearch + '"') else ""} \
      ~{if defined(diamondDiamond) then ("--diamond " +  '"' + diamondDiamond + '"') else ""} \
      ~{if defined(taxonomicTaxonomicProfile) then ("--taxonomic-profile " +  '"' + taxonomicTaxonomicProfile + '"') else ""} \
      ~{if defined(idIdMapping) then ("--id-mapping " +  '"' + idIdMapping + '"') else ""} \
      ~{if defined(translatedTranslatedAlignment) then ("--translated-alignment " +  '"' + translatedTranslatedAlignment + '"') else ""} \
      ~{if defined(xXIpe) then ("--xipe " +  '"' + xXIpe + '"') else ""} \
      ~{if defined(minMinPath) then ("--minpath " +  '"' + minMinPath + '"') else ""} \
      ~{if defined(pickPickFrames) then ("--pick-frames " +  '"' + pickPickFrames + '"') else ""} \
      ~{if defined(gapGapFill) then ("--gap-fill " +  '"' + gapGapFill + '"') else ""} \
      ~{if defined(outputOutputFormat) then ("--output-format " +  '"' + outputOutputFormat + '"') else ""} \
      ~{true="--output-max-decimals" false="" outputOutputMaxDecimals} \
      ~{if defined(outputOutputBasename) then ("--output-basename " +  '"' + outputOutputBasename + '"') else ""} \
      ~{true="--remove-stratified-output" false="" removeRemoveStratifiedOutput} \
      ~{true="--remove-column-description-output" false="" removeRemoveColumnDescriptionOutput} \
      ~{true="--input-format" false="" inputInputFormat} \
      ~{if defined(pathwaysPathwaysDatabase) then ("--pathways-database " +  '"' + pathwaysPathwaysDatabase + '"') else ""} \
      ~{if defined(pathwaysPathways) then ("--pathways " +  '"' + pathwaysPathways + '"') else ""} \
      ~{if defined(memoryMemoryUse) then ("--memory-use " +  '"' + memoryMemoryUse + '"') else ""}
  >>>
}