version 1.0

task GatkFramework {
  input {
    String analysisAnalysisType
    String argArgFile
    String inputInputFile
    Boolean showShowFullBamList
    String readReadBufferSize
    String readReadFilter
    String disableDisableReadFilter
    Int intervalsIntervals
    String excludeExcludeIntervals
    Int intervalIntervalSetRule
    Int intervalIntervalMerging
    Int intervalIntervalPadding
    String referenceReferenceSequence
    Boolean nondeterministicNondeterministicRandomSeed
    Int maxMaxRuntime
    Int maxMaxRuntimeUnits
    String downsamplingDownsamplingType
    String downDownSampleToFraction
    String downDownSampleToCoverage
    String baqBaq
    String baqBaqGapOpenPenalty
    Boolean refactorRefactorNdnCigarString
    Boolean fixFixMIsEncodedQualityScores
    Boolean allowAllowPotentiallyMIsEncodedQualityScores
    Boolean useUseOriginalQualities
    String defaultDefaultBaseQualities
    String performancePerformanceLog
    String bBQsr
    String quantizeQuantizeQuals
    String staticStaticQuantizedQuals
    Boolean disableDisableInDelQuals
    Boolean emitEmitOriginalQuals
    String preservePreserveQScoresLessThan
    String globalGlobalQScorePrior
    String validationValidationStrictness
    Boolean removeRemoveProgramRecords
    Boolean keepKeepProgramRecords
    String sampleSampleRenameMappingFile
    String unsafeUnsafe
    Boolean sitesSitesOnly
    Boolean neverNeverTrimVcfFormatField
    String bamBamCompression
    Boolean simplifySimplifyBam
    Boolean disableDisableBamIndexing
    Boolean generateGenerateMd5
    String numNumThreads
    String numNumCpuThreadsPerDataThread
    Boolean monitorMonitorThreadEfficiency
    String readReadGroupBlackList
    String pedigreePedigree
    String pedigreePedigreeString
    String pedigreePedigreeValidationType
    String variantVariantIndexType
    String variantVariantIndexParameter
    String referenceReferenceWindowStop
    String loggingLoggingLevel
    String logLogToFile
    String? annotatorAnnotator
    String? coverageCoverage
    String? daDaKl
    String? diagnosticsDiagnostics
    String? diffDiffEngine
    String? examplesExamples
    String? fastFastA
    String? filtersFilters
    String? indelsIndels
    String? qcQc
    String? readReadUtils
    String? rnaseRnaseQ
    String? variantVariantEval
    String? variantVariantUtils
  }
  command <<<
    gatk-framework \
      ~{annotatorAnnotator} \
      ~{if defined(analysisAnalysisType) then ("--analysis_type " +  '"' + analysisAnalysisType + '"') else ""} \
      ~{if defined(argArgFile) then ("--arg_file " +  '"' + argArgFile + '"') else ""} \
      ~{if defined(inputInputFile) then ("--input_file " +  '"' + inputInputFile + '"') else ""} \
      ~{true="--showFullBamList" false="" showShowFullBamList} \
      ~{if defined(readReadBufferSize) then ("--read_buffer_size " +  '"' + readReadBufferSize + '"') else ""} \
      ~{if defined(readReadFilter) then ("--read_filter " +  '"' + readReadFilter + '"') else ""} \
      ~{if defined(disableDisableReadFilter) then ("--disable_read_filter " +  '"' + disableDisableReadFilter + '"') else ""} \
      ~{if defined(intervalsIntervals) then ("--intervals " +  '"' + intervalsIntervals + '"') else ""} \
      ~{if defined(excludeExcludeIntervals) then ("--excludeIntervals " +  '"' + excludeExcludeIntervals + '"') else ""} \
      ~{if defined(intervalIntervalSetRule) then ("--interval_set_rule " +  '"' + intervalIntervalSetRule + '"') else ""} \
      ~{if defined(intervalIntervalMerging) then ("--interval_merging " +  '"' + intervalIntervalMerging + '"') else ""} \
      ~{if defined(intervalIntervalPadding) then ("--interval_padding " +  '"' + intervalIntervalPadding + '"') else ""} \
      ~{if defined(referenceReferenceSequence) then ("--reference_sequence " +  '"' + referenceReferenceSequence + '"') else ""} \
      ~{true="--nonDeterministicRandomSeed" false="" nondeterministicNondeterministicRandomSeed} \
      ~{if defined(maxMaxRuntime) then ("--maxRuntime " +  '"' + maxMaxRuntime + '"') else ""} \
      ~{if defined(maxMaxRuntimeUnits) then ("--maxRuntimeUnits " +  '"' + maxMaxRuntimeUnits + '"') else ""} \
      ~{if defined(downsamplingDownsamplingType) then ("--downsampling_type " +  '"' + downsamplingDownsamplingType + '"') else ""} \
      ~{if defined(downDownSampleToFraction) then ("--downsample_to_fraction " +  '"' + downDownSampleToFraction + '"') else ""} \
      ~{if defined(downDownSampleToCoverage) then ("--downsample_to_coverage " +  '"' + downDownSampleToCoverage + '"') else ""} \
      ~{if defined(baqBaq) then ("--baq " +  '"' + baqBaq + '"') else ""} \
      ~{if defined(baqBaqGapOpenPenalty) then ("--baqGapOpenPenalty " +  '"' + baqBaqGapOpenPenalty + '"') else ""} \
      ~{true="--refactor_NDN_cigar_string" false="" refactorRefactorNdnCigarString} \
      ~{true="--fix_misencoded_quality_scores" false="" fixFixMIsEncodedQualityScores} \
      ~{true="--allow_potentially_misencoded_quality_scores" false="" allowAllowPotentiallyMIsEncodedQualityScores} \
      ~{true="--useOriginalQualities" false="" useUseOriginalQualities} \
      ~{if defined(defaultDefaultBaseQualities) then ("--defaultBaseQualities " +  '"' + defaultDefaultBaseQualities + '"') else ""} \
      ~{if defined(performancePerformanceLog) then ("--performanceLog " +  '"' + performancePerformanceLog + '"') else ""} \
      ~{if defined(bBQsr) then ("--BQSR " +  '"' + bBQsr + '"') else ""} \
      ~{if defined(quantizeQuantizeQuals) then ("--quantize_quals " +  '"' + quantizeQuantizeQuals + '"') else ""} \
      ~{if defined(staticStaticQuantizedQuals) then ("--static_quantized_quals " +  '"' + staticStaticQuantizedQuals + '"') else ""} \
      ~{true="--disable_indel_quals" false="" disableDisableInDelQuals} \
      ~{true="--emit_original_quals" false="" emitEmitOriginalQuals} \
      ~{if defined(preservePreserveQScoresLessThan) then ("--preserve_qscores_less_than " +  '"' + preservePreserveQScoresLessThan + '"') else ""} \
      ~{if defined(globalGlobalQScorePrior) then ("--globalQScorePrior " +  '"' + globalGlobalQScorePrior + '"') else ""} \
      ~{if defined(validationValidationStrictness) then ("--validation_strictness " +  '"' + validationValidationStrictness + '"') else ""} \
      ~{true="--remove_program_records" false="" removeRemoveProgramRecords} \
      ~{true="--keep_program_records" false="" keepKeepProgramRecords} \
      ~{if defined(sampleSampleRenameMappingFile) then ("--sample_rename_mapping_file " +  '"' + sampleSampleRenameMappingFile + '"') else ""} \
      ~{if defined(unsafeUnsafe) then ("--unsafe " +  '"' + unsafeUnsafe + '"') else ""} \
      ~{true="--sites_only" false="" sitesSitesOnly} \
      ~{true="--never_trim_vcf_format_field" false="" neverNeverTrimVcfFormatField} \
      ~{if defined(bamBamCompression) then ("--bam_compression " +  '"' + bamBamCompression + '"') else ""} \
      ~{true="--simplifyBAM" false="" simplifySimplifyBam} \
      ~{true="--disable_bam_indexing" false="" disableDisableBamIndexing} \
      ~{true="--generate_md5" false="" generateGenerateMd5} \
      ~{if defined(numNumThreads) then ("--num_threads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(numNumCpuThreadsPerDataThread) then ("--num_cpu_threads_per_data_thread " +  '"' + numNumCpuThreadsPerDataThread + '"') else ""} \
      ~{true="--monitorThreadEfficiency" false="" monitorMonitorThreadEfficiency} \
      ~{if defined(readReadGroupBlackList) then ("--read_group_black_list " +  '"' + readReadGroupBlackList + '"') else ""} \
      ~{if defined(pedigreePedigree) then ("--pedigree " +  '"' + pedigreePedigree + '"') else ""} \
      ~{if defined(pedigreePedigreeString) then ("--pedigreeString " +  '"' + pedigreePedigreeString + '"') else ""} \
      ~{if defined(pedigreePedigreeValidationType) then ("--pedigreeValidationType " +  '"' + pedigreePedigreeValidationType + '"') else ""} \
      ~{if defined(variantVariantIndexType) then ("--variant_index_type " +  '"' + variantVariantIndexType + '"') else ""} \
      ~{if defined(variantVariantIndexParameter) then ("--variant_index_parameter " +  '"' + variantVariantIndexParameter + '"') else ""} \
      ~{if defined(referenceReferenceWindowStop) then ("--reference_window_stop " +  '"' + referenceReferenceWindowStop + '"') else ""} \
      ~{if defined(loggingLoggingLevel) then ("--logging_level " +  '"' + loggingLoggingLevel + '"') else ""} \
      ~{if defined(logLogToFile) then ("--log_to_file " +  '"' + logLogToFile + '"') else ""} \
      ~{coverageCoverage} \
      ~{daDaKl} \
      ~{diagnosticsDiagnostics} \
      ~{diffDiffEngine} \
      ~{examplesExamples} \
      ~{fastFastA} \
      ~{filtersFilters} \
      ~{indelsIndels} \
      ~{qcQc} \
      ~{readReadUtils} \
      ~{rnaseRnaseQ} \
      ~{variantVariantEval} \
      ~{variantVariantUtils}
  >>>
}