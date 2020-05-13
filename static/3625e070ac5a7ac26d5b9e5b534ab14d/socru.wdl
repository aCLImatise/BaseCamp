version 1.0

task Socru {
  input {
    String dbDbDir
    String threadsThreads
    String outputOutputFile
    String outputOutputPlotFile
    String novelNovelProfiles
    String newNewFragments
    String topTopBlastHits
    String outputOutputOperonDirectionsFile
    Int maxMaxBasesFromEnds
    Boolean notNotCircular
    Int minMinBitScore
    Int minMinAlignmentLength
    Boolean debugDebug
    Boolean verboseVerbose
    String? speciesSpecies
    String? inputInputFiles
  }
  command <<<
    socru \
      ~{speciesSpecies} \
      ~{if defined(dbDbDir) then ("--db_dir " +  '"' + dbDbDir + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output_file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(outputOutputPlotFile) then ("--output_plot_file " +  '"' + outputOutputPlotFile + '"') else ""} \
      ~{if defined(novelNovelProfiles) then ("--novel_profiles " +  '"' + novelNovelProfiles + '"') else ""} \
      ~{if defined(newNewFragments) then ("--new_fragments " +  '"' + newNewFragments + '"') else ""} \
      ~{if defined(topTopBlastHits) then ("--top_blast_hits " +  '"' + topTopBlastHits + '"') else ""} \
      ~{if defined(outputOutputOperonDirectionsFile) then ("--output_operon_directions_file " +  '"' + outputOutputOperonDirectionsFile + '"') else ""} \
      ~{if defined(maxMaxBasesFromEnds) then ("--max_bases_from_ends " +  '"' + maxMaxBasesFromEnds + '"') else ""} \
      ~{true="--not_circular" false="" notNotCircular} \
      ~{if defined(minMinBitScore) then ("--min_bit_score " +  '"' + minMinBitScore + '"') else ""} \
      ~{if defined(minMinAlignmentLength) then ("--min_alignment_length " +  '"' + minMinAlignmentLength + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{inputInputFiles}
  >>>
}