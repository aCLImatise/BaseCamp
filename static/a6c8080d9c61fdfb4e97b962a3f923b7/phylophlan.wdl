version 1.0

task Phylophlan {
  input {
    String cleanClean
    String outputOutput
    String databaseDatabase
    String dbDbType
    String configConfigFile
    String diversityDiversity
    Boolean accurateAccurate
    Boolean fastFast
    Boolean cleanCleanAll
    Boolean databaseDatabaseList
    String subSubMat
    Boolean subSubMatList
    Boolean subSubModList
    String nprocNproc
    Int minMinNumProteins
    Int minMinLenProtein
    Int minMinNumMarkers
    String trimTrim
    String gapGapPercThreshold
    String notNotVariantThreshold
    String subsampleSubsample
    String unknownUnknownFraction
    String scoringScoringFunction
    Boolean sortSort
    Boolean removeRemoveFragmentaryEntries
    String fragmentaryFragmentaryThreshold
    Int minMinNumEntries
    String maasMaas
    Boolean removeRemoveOnlyGapsEntries
    Boolean mutationMutationRates
    Boolean forceForceNucleotides
    Boolean updateUpdate
    Boolean verboseVerbose
    String inputInputFolder
    String dataDataFolder
    String databasesDatabasesFolder
    String subSubMatFolder
    String subSubModFolder
    String configsConfigsFolder
    String outputOutputFolder
    String genomeGenomeExtension
    String proteomeProteomeExtension
  }
  command <<<
    phylophlan \
      ~{if defined(cleanClean) then ("--clean " +  '"' + cleanClean + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(dbDbType) then ("--db_type " +  '"' + dbDbType + '"') else ""} \
      ~{if defined(configConfigFile) then ("--config_file " +  '"' + configConfigFile + '"') else ""} \
      ~{if defined(diversityDiversity) then ("--diversity " +  '"' + diversityDiversity + '"') else ""} \
      ~{true="--accurate" false="" accurateAccurate} \
      ~{true="--fast" false="" fastFast} \
      ~{true="--clean_all" false="" cleanCleanAll} \
      ~{true="--database_list" false="" databaseDatabaseList} \
      ~{if defined(subSubMat) then ("--submat " +  '"' + subSubMat + '"') else ""} \
      ~{true="--submat_list" false="" subSubMatList} \
      ~{true="--submod_list" false="" subSubModList} \
      ~{if defined(nprocNproc) then ("--nproc " +  '"' + nprocNproc + '"') else ""} \
      ~{if defined(minMinNumProteins) then ("--min_num_proteins " +  '"' + minMinNumProteins + '"') else ""} \
      ~{if defined(minMinLenProtein) then ("--min_len_protein " +  '"' + minMinLenProtein + '"') else ""} \
      ~{if defined(minMinNumMarkers) then ("--min_num_markers " +  '"' + minMinNumMarkers + '"') else ""} \
      ~{if defined(trimTrim) then ("--trim " +  '"' + trimTrim + '"') else ""} \
      ~{if defined(gapGapPercThreshold) then ("--gap_perc_threshold " +  '"' + gapGapPercThreshold + '"') else ""} \
      ~{if defined(notNotVariantThreshold) then ("--not_variant_threshold " +  '"' + notNotVariantThreshold + '"') else ""} \
      ~{if defined(subsampleSubsample) then ("--subsample " +  '"' + subsampleSubsample + '"') else ""} \
      ~{if defined(unknownUnknownFraction) then ("--unknown_fraction " +  '"' + unknownUnknownFraction + '"') else ""} \
      ~{if defined(scoringScoringFunction) then ("--scoring_function " +  '"' + scoringScoringFunction + '"') else ""} \
      ~{true="--sort" false="" sortSort} \
      ~{true="--remove_fragmentary_entries" false="" removeRemoveFragmentaryEntries} \
      ~{if defined(fragmentaryFragmentaryThreshold) then ("--fragmentary_threshold " +  '"' + fragmentaryFragmentaryThreshold + '"') else ""} \
      ~{if defined(minMinNumEntries) then ("--min_num_entries " +  '"' + minMinNumEntries + '"') else ""} \
      ~{if defined(maasMaas) then ("--maas " +  '"' + maasMaas + '"') else ""} \
      ~{true="--remove_only_gaps_entries" false="" removeRemoveOnlyGapsEntries} \
      ~{true="--mutation_rates" false="" mutationMutationRates} \
      ~{true="--force_nucleotides" false="" forceForceNucleotides} \
      ~{true="--update" false="" updateUpdate} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(inputInputFolder) then ("--input_folder " +  '"' + inputInputFolder + '"') else ""} \
      ~{if defined(dataDataFolder) then ("--data_folder " +  '"' + dataDataFolder + '"') else ""} \
      ~{if defined(databasesDatabasesFolder) then ("--databases_folder " +  '"' + databasesDatabasesFolder + '"') else ""} \
      ~{if defined(subSubMatFolder) then ("--submat_folder " +  '"' + subSubMatFolder + '"') else ""} \
      ~{if defined(subSubModFolder) then ("--submod_folder " +  '"' + subSubModFolder + '"') else ""} \
      ~{if defined(configsConfigsFolder) then ("--configs_folder " +  '"' + configsConfigsFolder + '"') else ""} \
      ~{if defined(outputOutputFolder) then ("--output_folder " +  '"' + outputOutputFolder + '"') else ""} \
      ~{if defined(genomeGenomeExtension) then ("--genome_extension " +  '"' + genomeGenomeExtension + '"') else ""} \
      ~{if defined(proteomeProteomeExtension) then ("--proteome_extension " +  '"' + proteomeProteomeExtension + '"') else ""}
  >>>
}