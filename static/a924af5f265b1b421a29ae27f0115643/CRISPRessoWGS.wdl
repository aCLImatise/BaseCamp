version 1.0

task CRISPRessoWGS {
  input {
    String fastFastQR1
    String fastFastQR2
    String ampliconAmpliconSeq
    String ampliconAmpliconName
    String ampliconAmpliconMinAlignmentScore
    String defaultDefaultMinAlnScore
    Boolean expandExpandAmbiguousAlignments
    String guideGuideSeq
    String guideGuideName
    String flexiFlexiGuide
    String flexiFlexiGuideHomology
    String flexiFlexiGuideName
    String expectedExpectedHdrAmpliconSeq
    String codingCodingSeq
    Int minMinAverageReadQuality
    Int minMinSingleBpQuality
    Int minMinBpQualityOrN
    File fileFilePrefix
    String nameName
    String outputOutputFolder
    Boolean splitSplitPairedEnd
    Boolean trimTrimSequences
    String trimTrimMoMaticCommand
    String trimTrimMoMaticOptionsString
    String flashFlashCommand
    Int minMinPairedEndReadsOverlap
    Int maxMaxPairedEndReadsOverlap
    Boolean stringentStringentFlashMerging
    String quantificationQuantificationWindowSize
    String quantificationQuantificationWindowCenter
    String excludeExcludeBpFromLeft
    String excludeExcludeBpFromRight
    Boolean ignoreIgnoreSubstitutions
    Boolean ignoreIgnoreInsertions
    Boolean ignoreIgnoreDeletions
    Boolean discardDiscardInDelReads
    String dsoDsoDn
    String needlemanNeedlemanWunschGapOpen
    String needlemanNeedlemanWunschGapExtend
    String needlemanNeedlemanWunschGapIncentive
    String needlemanNeedlemanWunschAlnMatrixLoc
    String offsetOffsetAroundCutToPlot
    Int minMinFrequencyAllelesAroundCutToPlot
    Boolean expandExpandAllelePlotsByQuantification
    String quantificationQuantificationWindowCoordinates
    Boolean keepKeepIntermediate
    Boolean dumpDump
    Int maxMaxRowsAllelesAroundCutToPlot
    Boolean suppressSuppressReport
    Boolean placePlaceReportInOutputFolder
    Boolean suppressSuppressPlots
    Boolean baseBaseEditorOutput
    String conversionConversionNucFrom
    String conversionConversionNucTo
    Boolean crispresso1Crispresso1Mode
    Boolean autoAuto
    Boolean debugDebug
    Boolean noNoRerun
    String bamBamFile
    String regionRegionFile
    String referenceReferenceFile
    Int minMinReadsToUseRegion
    Boolean skipSkipFailed
    String geneGeneAnnotations
    String nNProcesses
    String crisCrisPressoCommand
  }
  command <<<
    CRISPRessoWGS \
      ~{if defined(fastFastQR1) then ("--fastq_r1 " +  '"' + fastFastQR1 + '"') else ""} \
      ~{if defined(fastFastQR2) then ("--fastq_r2 " +  '"' + fastFastQR2 + '"') else ""} \
      ~{if defined(ampliconAmpliconSeq) then ("--amplicon_seq " +  '"' + ampliconAmpliconSeq + '"') else ""} \
      ~{if defined(ampliconAmpliconName) then ("--amplicon_name " +  '"' + ampliconAmpliconName + '"') else ""} \
      ~{if defined(ampliconAmpliconMinAlignmentScore) then ("--amplicon_min_alignment_score " +  '"' + ampliconAmpliconMinAlignmentScore + '"') else ""} \
      ~{if defined(defaultDefaultMinAlnScore) then ("--default_min_aln_score " +  '"' + defaultDefaultMinAlnScore + '"') else ""} \
      ~{true="--expand_ambiguous_alignments" false="" expandExpandAmbiguousAlignments} \
      ~{if defined(guideGuideSeq) then ("--guide_seq " +  '"' + guideGuideSeq + '"') else ""} \
      ~{if defined(guideGuideName) then ("--guide_name " +  '"' + guideGuideName + '"') else ""} \
      ~{if defined(flexiFlexiGuide) then ("--flexiguide " +  '"' + flexiFlexiGuide + '"') else ""} \
      ~{if defined(flexiFlexiGuideHomology) then ("--flexiguide_homology " +  '"' + flexiFlexiGuideHomology + '"') else ""} \
      ~{if defined(flexiFlexiGuideName) then ("--flexiguide_name " +  '"' + flexiFlexiGuideName + '"') else ""} \
      ~{if defined(expectedExpectedHdrAmpliconSeq) then ("--expected_hdr_amplicon_seq " +  '"' + expectedExpectedHdrAmpliconSeq + '"') else ""} \
      ~{if defined(codingCodingSeq) then ("--coding_seq " +  '"' + codingCodingSeq + '"') else ""} \
      ~{if defined(minMinAverageReadQuality) then ("--min_average_read_quality " +  '"' + minMinAverageReadQuality + '"') else ""} \
      ~{if defined(minMinSingleBpQuality) then ("--min_single_bp_quality " +  '"' + minMinSingleBpQuality + '"') else ""} \
      ~{if defined(minMinBpQualityOrN) then ("--min_bp_quality_or_N " +  '"' + minMinBpQualityOrN + '"') else ""} \
      ~{if defined(fileFilePrefix) then ("--file_prefix " +  '"' + fileFilePrefix + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(outputOutputFolder) then ("--output_folder " +  '"' + outputOutputFolder + '"') else ""} \
      ~{true="--split_paired_end" false="" splitSplitPairedEnd} \
      ~{true="--trim_sequences" false="" trimTrimSequences} \
      ~{if defined(trimTrimMoMaticCommand) then ("--trimmomatic_command " +  '"' + trimTrimMoMaticCommand + '"') else ""} \
      ~{if defined(trimTrimMoMaticOptionsString) then ("--trimmomatic_options_string " +  '"' + trimTrimMoMaticOptionsString + '"') else ""} \
      ~{if defined(flashFlashCommand) then ("--flash_command " +  '"' + flashFlashCommand + '"') else ""} \
      ~{if defined(minMinPairedEndReadsOverlap) then ("--min_paired_end_reads_overlap " +  '"' + minMinPairedEndReadsOverlap + '"') else ""} \
      ~{if defined(maxMaxPairedEndReadsOverlap) then ("--max_paired_end_reads_overlap " +  '"' + maxMaxPairedEndReadsOverlap + '"') else ""} \
      ~{true="--stringent_flash_merging" false="" stringentStringentFlashMerging} \
      ~{if defined(quantificationQuantificationWindowSize) then ("--quantification_window_size " +  '"' + quantificationQuantificationWindowSize + '"') else ""} \
      ~{if defined(quantificationQuantificationWindowCenter) then ("--quantification_window_center " +  '"' + quantificationQuantificationWindowCenter + '"') else ""} \
      ~{if defined(excludeExcludeBpFromLeft) then ("--exclude_bp_from_left " +  '"' + excludeExcludeBpFromLeft + '"') else ""} \
      ~{if defined(excludeExcludeBpFromRight) then ("--exclude_bp_from_right " +  '"' + excludeExcludeBpFromRight + '"') else ""} \
      ~{true="--ignore_substitutions" false="" ignoreIgnoreSubstitutions} \
      ~{true="--ignore_insertions" false="" ignoreIgnoreInsertions} \
      ~{true="--ignore_deletions" false="" ignoreIgnoreDeletions} \
      ~{true="--discard_indel_reads" false="" discardDiscardInDelReads} \
      ~{if defined(dsoDsoDn) then ("--dsODN " +  '"' + dsoDsoDn + '"') else ""} \
      ~{if defined(needlemanNeedlemanWunschGapOpen) then ("--needleman_wunsch_gap_open " +  '"' + needlemanNeedlemanWunschGapOpen + '"') else ""} \
      ~{if defined(needlemanNeedlemanWunschGapExtend) then ("--needleman_wunsch_gap_extend " +  '"' + needlemanNeedlemanWunschGapExtend + '"') else ""} \
      ~{if defined(needlemanNeedlemanWunschGapIncentive) then ("--needleman_wunsch_gap_incentive " +  '"' + needlemanNeedlemanWunschGapIncentive + '"') else ""} \
      ~{if defined(needlemanNeedlemanWunschAlnMatrixLoc) then ("--needleman_wunsch_aln_matrix_loc " +  '"' + needlemanNeedlemanWunschAlnMatrixLoc + '"') else ""} \
      ~{if defined(offsetOffsetAroundCutToPlot) then ("--offset_around_cut_to_plot " +  '"' + offsetOffsetAroundCutToPlot + '"') else ""} \
      ~{if defined(minMinFrequencyAllelesAroundCutToPlot) then ("--min_frequency_alleles_around_cut_to_plot " +  '"' + minMinFrequencyAllelesAroundCutToPlot + '"') else ""} \
      ~{true="--expand_allele_plots_by_quantification" false="" expandExpandAllelePlotsByQuantification} \
      ~{if defined(quantificationQuantificationWindowCoordinates) then ("--quantification_window_coordinates " +  '"' + quantificationQuantificationWindowCoordinates + '"') else ""} \
      ~{true="--keep_intermediate" false="" keepKeepIntermediate} \
      ~{true="--dump" false="" dumpDump} \
      ~{if defined(maxMaxRowsAllelesAroundCutToPlot) then ("--max_rows_alleles_around_cut_to_plot " +  '"' + maxMaxRowsAllelesAroundCutToPlot + '"') else ""} \
      ~{true="--suppress_report" false="" suppressSuppressReport} \
      ~{true="--place_report_in_output_folder" false="" placePlaceReportInOutputFolder} \
      ~{true="--suppress_plots" false="" suppressSuppressPlots} \
      ~{true="--base_editor_output" false="" baseBaseEditorOutput} \
      ~{if defined(conversionConversionNucFrom) then ("--conversion_nuc_from " +  '"' + conversionConversionNucFrom + '"') else ""} \
      ~{if defined(conversionConversionNucTo) then ("--conversion_nuc_to " +  '"' + conversionConversionNucTo + '"') else ""} \
      ~{true="--crispresso1_mode" false="" crispresso1Crispresso1Mode} \
      ~{true="--auto" false="" autoAuto} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--no_rerun" false="" noNoRerun} \
      ~{if defined(bamBamFile) then ("--bam_file " +  '"' + bamBamFile + '"') else ""} \
      ~{if defined(regionRegionFile) then ("--region_file " +  '"' + regionRegionFile + '"') else ""} \
      ~{if defined(referenceReferenceFile) then ("--reference_file " +  '"' + referenceReferenceFile + '"') else ""} \
      ~{if defined(minMinReadsToUseRegion) then ("--min_reads_to_use_region " +  '"' + minMinReadsToUseRegion + '"') else ""} \
      ~{true="--skip_failed" false="" skipSkipFailed} \
      ~{if defined(geneGeneAnnotations) then ("--gene_annotations " +  '"' + geneGeneAnnotations + '"') else ""} \
      ~{if defined(nNProcesses) then ("--n_processes " +  '"' + nNProcesses + '"') else ""} \
      ~{if defined(crisCrisPressoCommand) then ("--crispresso_command " +  '"' + crisCrisPressoCommand + '"') else ""}
  >>>
}