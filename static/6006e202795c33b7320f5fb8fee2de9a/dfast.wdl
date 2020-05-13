version 1.0

task Dfast {
  input {
    File genomeGenome
    File outOut
    File configConfig
    String organismOrganism
    String strainStrain
    Boolean completeComplete
    Boolean useUseOriginalName
    Boolean sortSortSequence
    Int minimumMinimumLength
    Boolean fixFixOrigin
    Int offsetOffset
    String locusLocusTagPrefix
    Int stepStep
    Boolean useUseSeparateTags
    String thresholdThreshold
    File databaseDatabase
    File referencesReferences
    String alignerAligner
    Boolean useUseProdigal
    String useUseGenemarkS2
    String useUseTrnascan
    String useUseRnAmmer
    Int gGCode
    Boolean noNoHmm
    Boolean noNoCdd
    Boolean noNoCds
    Boolean noNoRrna
    Boolean noNoTrna
    Boolean noNoCrispR
    String gffGff
    String seqSeqNames
    String seqSeqTypes
    String seqSeqTopologies
    String additionalAdditionalModifiers
    File metadataMetadataFile
    String centerCenterName
    Int cpuCpu
    Boolean forceForce
    Boolean debugDebug
    Boolean showShowConfig
  }
  command <<<
    dfast \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(strainStrain) then ("--strain " +  '"' + strainStrain + '"') else ""} \
      ~{if defined(completeComplete) then ("--complete " +  '"' + completeComplete + '"') else ""} \
      ~{if defined(useUseOriginalName) then ("--use_original_name " +  '"' + useUseOriginalName + '"') else ""} \
      ~{if defined(sortSortSequence) then ("--sort_sequence " +  '"' + sortSortSequence + '"') else ""} \
      ~{if defined(minimumMinimumLength) then ("--minimum_length " +  '"' + minimumMinimumLength + '"') else ""} \
      ~{true="--fix_origin" false="" fixFixOrigin} \
      ~{if defined(offsetOffset) then ("--offset " +  '"' + offsetOffset + '"') else ""} \
      ~{if defined(locusLocusTagPrefix) then ("--locus_tag_prefix " +  '"' + locusLocusTagPrefix + '"') else ""} \
      ~{if defined(stepStep) then ("--step " +  '"' + stepStep + '"') else ""} \
      ~{if defined(useUseSeparateTags) then ("--use_separate_tags " +  '"' + useUseSeparateTags + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(referencesReferences) then ("--references " +  '"' + referencesReferences + '"') else ""} \
      ~{if defined(alignerAligner) then ("--aligner " +  '"' + alignerAligner + '"') else ""} \
      ~{true="--use_prodigal" false="" useUseProdigal} \
      ~{if defined(useUseGenemarkS2) then ("--use_genemarks2 " +  '"' + useUseGenemarkS2 + '"') else ""} \
      ~{if defined(useUseTrnascan) then ("--use_trnascan " +  '"' + useUseTrnascan + '"') else ""} \
      ~{if defined(useUseRnAmmer) then ("--use_rnammer " +  '"' + useUseRnAmmer + '"') else ""} \
      ~{if defined(gGCode) then ("--gcode " +  '"' + gGCode + '"') else ""} \
      ~{true="--no_hmm" false="" noNoHmm} \
      ~{true="--no_cdd" false="" noNoCdd} \
      ~{true="--no_cds" false="" noNoCds} \
      ~{true="--no_rrna" false="" noNoRrna} \
      ~{true="--no_trna" false="" noNoTrna} \
      ~{true="--no_crispr" false="" noNoCrispR} \
      ~{if defined(gffGff) then ("--gff " +  '"' + gffGff + '"') else ""} \
      ~{if defined(seqSeqNames) then ("--seq_names " +  '"' + seqSeqNames + '"') else ""} \
      ~{if defined(seqSeqTypes) then ("--seq_types " +  '"' + seqSeqTypes + '"') else ""} \
      ~{if defined(seqSeqTopologies) then ("--seq_topologies " +  '"' + seqSeqTopologies + '"') else ""} \
      ~{if defined(additionalAdditionalModifiers) then ("--additional_modifiers " +  '"' + additionalAdditionalModifiers + '"') else ""} \
      ~{if defined(metadataMetadataFile) then ("--metadata_file " +  '"' + metadataMetadataFile + '"') else ""} \
      ~{if defined(centerCenterName) then ("--center_name " +  '"' + centerCenterName + '"') else ""} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--show_config" false="" showShowConfig}
  >>>
}