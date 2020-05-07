version 1.0

task Strainphlan {
  input {
    String databaseDatabase
    String cladeCladeMarkers
    Array[String]+ samplesSamples
    Array[String]+ referencesReferences
    String cladeClade
    String outputOutputDir
    String nprocsNprocs
    Array[String]+ secondarySecondarySamples
    Array[String]+ secondarySecondaryReferences
    String trimTrimSequences
    String markerMarkerInNSamples
    String sampleSampleWithNMarkers
    String secondarySecondarySampleWithNMarkers
    String phyloPhyloPhlAnMode
    String phyloPhyloPhlAnConfiguration
    Boolean mutationMutationRates
    Boolean printPrintCladesOnly
  }
  command <<<
    strainphlan \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(cladeCladeMarkers) then ("--clade_markers " +  '"' + cladeCladeMarkers + '"') else ""} \
      ~{if defined(samplesSamples) then ("--samples " +  '"' + samplesSamples + '"') else ""} \
      ~{if defined(referencesReferences) then ("--references " +  '"' + referencesReferences + '"') else ""} \
      ~{if defined(cladeClade) then ("--clade " +  '"' + cladeClade + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(nprocsNprocs) then ("--nprocs " +  '"' + nprocsNprocs + '"') else ""} \
      ~{if defined(secondarySecondarySamples) then ("--secondary_samples " +  '"' + secondarySecondarySamples + '"') else ""} \
      ~{if defined(secondarySecondaryReferences) then ("--secondary_references " +  '"' + secondarySecondaryReferences + '"') else ""} \
      ~{if defined(trimTrimSequences) then ("--trim_sequences " +  '"' + trimTrimSequences + '"') else ""} \
      ~{if defined(markerMarkerInNSamples) then ("--marker_in_n_samples " +  '"' + markerMarkerInNSamples + '"') else ""} \
      ~{if defined(sampleSampleWithNMarkers) then ("--sample_with_n_markers " +  '"' + sampleSampleWithNMarkers + '"') else ""} \
      ~{if defined(secondarySecondarySampleWithNMarkers) then ("--secondary_sample_with_n_markers " +  '"' + secondarySecondarySampleWithNMarkers + '"') else ""} \
      ~{if defined(phyloPhyloPhlAnMode) then ("--phylophlan_mode " +  '"' + phyloPhyloPhlAnMode + '"') else ""} \
      ~{if defined(phyloPhyloPhlAnConfiguration) then ("--phylophlan_configuration " +  '"' + phyloPhyloPhlAnConfiguration + '"') else ""} \
      ~{true="--mutation_rates" false="" mutationMutationRates} \
      ~{true="--print_clades_only" false="" printPrintCladesOnly}
  >>>
}