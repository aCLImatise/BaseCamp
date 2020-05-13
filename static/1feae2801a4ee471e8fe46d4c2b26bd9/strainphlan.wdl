version 1.0

task Strainphlan.py {
  input {
    Array[String]+ ifnIfnSamples
    Array[String]+ ifnIfnSecondSamples
    String ifnIfnRepresentativeSample
    String indexIndex
    String mpaMpaPkl
    String outputOutputDir
    String ifnIfnMarkers
    String nprocsNprocsMain
    String nprocsNprocsLoadSamples
    String nprocsNprocsAlignClean
    String nprocsNprocsRaXml
    String bootstrapBootstrapRaXml
    Array[String]+ ifnIfnRefGenomes
    Boolean addAddReferenceGenomesAsSecondSamples
    String nNInMarker
    String markerMarkerStripLength
    String markerMarkerInClade
    String secondSecondMarkerInClade
    String sampleSampleInClade
    String sampleSampleInMarker
    String gapGapInTrailingCol
    String gapGapTrailingColLimit
    String gapGapInInternalCol
    String gapGapInSample
    String secondSecondGapInSample
    String nNCol
    String nNCount
    String longLongGapLength
    String longLongGapPercentage
    String pPValue
    Array[String]+ cladesClades
    String markerMarkerListFn
    Boolean printPrintCladesOnly
    String alignmentAlignmentProgram
    Boolean relaxedRelaxedParameters
    Boolean relaxedRelaxedParameters2
    Boolean relaxedRelaxedParameters3
    Boolean keepKeepAlignmentFiles
    Boolean keepKeepFullAlignmentFiles
    Boolean saveSaveSample2fullfreq
    Boolean useUseThreads
  }
  command <<<
    strainphlan.py \
      ~{if defined(ifnIfnSamples) then ("--ifn_samples " +  '"' + ifnIfnSamples + '"') else ""} \
      ~{if defined(ifnIfnSecondSamples) then ("--ifn_second_samples " +  '"' + ifnIfnSecondSamples + '"') else ""} \
      ~{if defined(ifnIfnRepresentativeSample) then ("--ifn_representative_sample " +  '"' + ifnIfnRepresentativeSample + '"') else ""} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(mpaMpaPkl) then ("--mpa_pkl " +  '"' + mpaMpaPkl + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(ifnIfnMarkers) then ("--ifn_markers " +  '"' + ifnIfnMarkers + '"') else ""} \
      ~{if defined(nprocsNprocsMain) then ("--nprocs_main " +  '"' + nprocsNprocsMain + '"') else ""} \
      ~{if defined(nprocsNprocsLoadSamples) then ("--nprocs_load_samples " +  '"' + nprocsNprocsLoadSamples + '"') else ""} \
      ~{if defined(nprocsNprocsAlignClean) then ("--nprocs_align_clean " +  '"' + nprocsNprocsAlignClean + '"') else ""} \
      ~{if defined(nprocsNprocsRaXml) then ("--nprocs_raxml " +  '"' + nprocsNprocsRaXml + '"') else ""} \
      ~{if defined(bootstrapBootstrapRaXml) then ("--bootstrap_raxml " +  '"' + bootstrapBootstrapRaXml + '"') else ""} \
      ~{if defined(ifnIfnRefGenomes) then ("--ifn_ref_genomes " +  '"' + ifnIfnRefGenomes + '"') else ""} \
      ~{true="--add_reference_genomes_as_second_samples" false="" addAddReferenceGenomesAsSecondSamples} \
      ~{if defined(nNInMarker) then ("--N_in_marker " +  '"' + nNInMarker + '"') else ""} \
      ~{if defined(markerMarkerStripLength) then ("--marker_strip_length " +  '"' + markerMarkerStripLength + '"') else ""} \
      ~{if defined(markerMarkerInClade) then ("--marker_in_clade " +  '"' + markerMarkerInClade + '"') else ""} \
      ~{if defined(secondSecondMarkerInClade) then ("--second_marker_in_clade " +  '"' + secondSecondMarkerInClade + '"') else ""} \
      ~{if defined(sampleSampleInClade) then ("--sample_in_clade " +  '"' + sampleSampleInClade + '"') else ""} \
      ~{if defined(sampleSampleInMarker) then ("--sample_in_marker " +  '"' + sampleSampleInMarker + '"') else ""} \
      ~{if defined(gapGapInTrailingCol) then ("--gap_in_trailing_col " +  '"' + gapGapInTrailingCol + '"') else ""} \
      ~{if defined(gapGapTrailingColLimit) then ("--gap_trailing_col_limit " +  '"' + gapGapTrailingColLimit + '"') else ""} \
      ~{if defined(gapGapInInternalCol) then ("--gap_in_internal_col " +  '"' + gapGapInInternalCol + '"') else ""} \
      ~{if defined(gapGapInSample) then ("--gap_in_sample " +  '"' + gapGapInSample + '"') else ""} \
      ~{if defined(secondSecondGapInSample) then ("--second_gap_in_sample " +  '"' + secondSecondGapInSample + '"') else ""} \
      ~{if defined(nNCol) then ("--N_col " +  '"' + nNCol + '"') else ""} \
      ~{if defined(nNCount) then ("--N_count " +  '"' + nNCount + '"') else ""} \
      ~{if defined(longLongGapLength) then ("--long_gap_length " +  '"' + longLongGapLength + '"') else ""} \
      ~{if defined(longLongGapPercentage) then ("--long_gap_percentage " +  '"' + longLongGapPercentage + '"') else ""} \
      ~{if defined(pPValue) then ("--p_value " +  '"' + pPValue + '"') else ""} \
      ~{if defined(cladesClades) then ("--clades " +  '"' + cladesClades + '"') else ""} \
      ~{if defined(markerMarkerListFn) then ("--marker_list_fn " +  '"' + markerMarkerListFn + '"') else ""} \
      ~{true="--print_clades_only" false="" printPrintCladesOnly} \
      ~{if defined(alignmentAlignmentProgram) then ("--alignment_program " +  '"' + alignmentAlignmentProgram + '"') else ""} \
      ~{true="--relaxed_parameters" false="" relaxedRelaxedParameters} \
      ~{true="--relaxed_parameters2" false="" relaxedRelaxedParameters2} \
      ~{true="--relaxed_parameters3" false="" relaxedRelaxedParameters3} \
      ~{true="--keep_alignment_files" false="" keepKeepAlignmentFiles} \
      ~{true="--keep_full_alignment_files" false="" keepKeepFullAlignmentFiles} \
      ~{true="--save_sample2fullfreq" false="" saveSaveSample2fullfreq} \
      ~{true="--use_threads" false="" useUseThreads}
  >>>
}