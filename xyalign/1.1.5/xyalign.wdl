version 1.0

task Xyalign {
  input {
    Boolean bamBam
    Boolean cramCram
    Boolean samSam
    String refRef
    String outputOutputDir
    Boolean chromosomesChromosomes
    Boolean xXChromosome
    Boolean yYChromosome
    String sampleSampleId
    String cpusCpus
    String xXMx
    Boolean fastFastQCompression
    Boolean singleSingleEnd
    Boolean noNoCleanup
    Boolean preparePrepareReference
    Boolean chromChromStats
    Boolean analyzeAnalyzeBam
    Boolean characterizeCharacterizeSexChromS
    Boolean remappingRemapping
    Boolean stripStripReads
    String logLogFile
    String reportingReportingLevel
    String platypusPlatypusPath
    String bwaBwaPath
    String samSamToolsPath
    String repairsRepairsHPath
    String shufflesShufflesHPath
    String sambaSambaMbaPath
    String bedBedToolsPath
    String platypusPlatypusCalling
    Boolean noNoVariantPlots
    Boolean noNoBamAnalysis
    Boolean skipSkipCompatibilityCheck
    Boolean noNoPermTest
    Boolean noNoKsTest
    Boolean noNoBootstrap
    String variantVariantSiteQuality
    String variantVariantGenotypeQuality
    String variantVariantDepth
    String platypusPlatypusLogFile
    String homogenizeHomogenizeReadBalance
    Int minMinVariantCount
    Boolean referenceReferenceMask
    String xxXxRefOutName
    String xyXyRefOutName
    String xxXxRefOut
    String xyXyRefOut
    String xxXxRefIn
    String xyXyRefIn
    String bwaBwaIndex
    String readReadGroupId
    String bwaBwaFlags
    Boolean sexSexChromBamOnly
    String sexSexChromCallingThreshold
    Boolean yYPresent
    Boolean yYAbsent
    String windowWindowSize
    String targetTargetBed
    Boolean exactExactDepth
    Boolean wholeWholeGenomeThreshold
    String mapqMapqCutOff
    Int minMinDepthFilter
    Int maxMaxDepthFilter
    String numNumPermutations
    String numNumBootstraps
    Boolean ignoreIgnoreDuplicates
    String markerMarkerSize
    String markerMarkerTransparency
    String coordinateCoordinateScale
    String includeIncludeFixed
    Boolean useUseCounts
  }
  command <<<
    xyalign \
      ~{true="--bam" false="" bamBam} \
      ~{true="--cram" false="" cramCram} \
      ~{true="--sam" false="" samSam} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{true="--chromosomes" false="" chromosomesChromosomes} \
      ~{true="--x_chromosome" false="" xXChromosome} \
      ~{true="--y_chromosome" false="" yYChromosome} \
      ~{if defined(sampleSampleId) then ("--sample_id " +  '"' + sampleSampleId + '"') else ""} \
      ~{if defined(cpusCpus) then ("--cpus " +  '"' + cpusCpus + '"') else ""} \
      ~{if defined(xXMx) then ("--xmx " +  '"' + xXMx + '"') else ""} \
      ~{true="--fastq_compression" false="" fastFastQCompression} \
      ~{true="--single_end" false="" singleSingleEnd} \
      ~{true="--no_cleanup" false="" noNoCleanup} \
      ~{true="--PREPARE_REFERENCE" false="" preparePrepareReference} \
      ~{true="--CHROM_STATS" false="" chromChromStats} \
      ~{true="--ANALYZE_BAM" false="" analyzeAnalyzeBam} \
      ~{true="--CHARACTERIZE_SEX_CHROMS" false="" characterizeCharacterizeSexChromS} \
      ~{true="--REMAPPING" false="" remappingRemapping} \
      ~{true="--STRIP_READS" false="" stripStripReads} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(reportingReportingLevel) then ("--reporting_level " +  '"' + reportingReportingLevel + '"') else ""} \
      ~{if defined(platypusPlatypusPath) then ("--platypus_path " +  '"' + platypusPlatypusPath + '"') else ""} \
      ~{if defined(bwaBwaPath) then ("--bwa_path " +  '"' + bwaBwaPath + '"') else ""} \
      ~{if defined(samSamToolsPath) then ("--samtools_path " +  '"' + samSamToolsPath + '"') else ""} \
      ~{if defined(repairsRepairsHPath) then ("--repairsh_path " +  '"' + repairsRepairsHPath + '"') else ""} \
      ~{if defined(shufflesShufflesHPath) then ("--shufflesh_path " +  '"' + shufflesShufflesHPath + '"') else ""} \
      ~{if defined(sambaSambaMbaPath) then ("--sambamba_path " +  '"' + sambaSambaMbaPath + '"') else ""} \
      ~{if defined(bedBedToolsPath) then ("--bedtools_path " +  '"' + bedBedToolsPath + '"') else ""} \
      ~{if defined(platypusPlatypusCalling) then ("--platypus_calling " +  '"' + platypusPlatypusCalling + '"') else ""} \
      ~{true="--no_variant_plots" false="" noNoVariantPlots} \
      ~{true="--no_bam_analysis" false="" noNoBamAnalysis} \
      ~{true="--skip_compatibility_check" false="" skipSkipCompatibilityCheck} \
      ~{true="--no_perm_test" false="" noNoPermTest} \
      ~{true="--no_ks_test" false="" noNoKsTest} \
      ~{true="--no_bootstrap" false="" noNoBootstrap} \
      ~{if defined(variantVariantSiteQuality) then ("--variant_site_quality " +  '"' + variantVariantSiteQuality + '"') else ""} \
      ~{if defined(variantVariantGenotypeQuality) then ("--variant_genotype_quality " +  '"' + variantVariantGenotypeQuality + '"') else ""} \
      ~{if defined(variantVariantDepth) then ("--variant_depth " +  '"' + variantVariantDepth + '"') else ""} \
      ~{if defined(platypusPlatypusLogFile) then ("--platypus_logfile " +  '"' + platypusPlatypusLogFile + '"') else ""} \
      ~{if defined(homogenizeHomogenizeReadBalance) then ("--homogenize_read_balance " +  '"' + homogenizeHomogenizeReadBalance + '"') else ""} \
      ~{if defined(minMinVariantCount) then ("--min_variant_count " +  '"' + minMinVariantCount + '"') else ""} \
      ~{true="--reference_mask" false="" referenceReferenceMask} \
      ~{if defined(xxXxRefOutName) then ("--xx_ref_out_name " +  '"' + xxXxRefOutName + '"') else ""} \
      ~{if defined(xyXyRefOutName) then ("--xy_ref_out_name " +  '"' + xyXyRefOutName + '"') else ""} \
      ~{if defined(xxXxRefOut) then ("--xx_ref_out " +  '"' + xxXxRefOut + '"') else ""} \
      ~{if defined(xyXyRefOut) then ("--xy_ref_out " +  '"' + xyXyRefOut + '"') else ""} \
      ~{if defined(xxXxRefIn) then ("--xx_ref_in " +  '"' + xxXxRefIn + '"') else ""} \
      ~{if defined(xyXyRefIn) then ("--xy_ref_in " +  '"' + xyXyRefIn + '"') else ""} \
      ~{if defined(bwaBwaIndex) then ("--bwa_index " +  '"' + bwaBwaIndex + '"') else ""} \
      ~{if defined(readReadGroupId) then ("--read_group_id " +  '"' + readReadGroupId + '"') else ""} \
      ~{if defined(bwaBwaFlags) then ("--bwa_flags " +  '"' + bwaBwaFlags + '"') else ""} \
      ~{true="--sex_chrom_bam_only" false="" sexSexChromBamOnly} \
      ~{if defined(sexSexChromCallingThreshold) then ("--sex_chrom_calling_threshold " +  '"' + sexSexChromCallingThreshold + '"') else ""} \
      ~{true="--y_present" false="" yYPresent} \
      ~{true="--y_absent" false="" yYAbsent} \
      ~{if defined(windowWindowSize) then ("--window_size " +  '"' + windowWindowSize + '"') else ""} \
      ~{if defined(targetTargetBed) then ("--target_bed " +  '"' + targetTargetBed + '"') else ""} \
      ~{true="--exact_depth" false="" exactExactDepth} \
      ~{true="--whole_genome_threshold" false="" wholeWholeGenomeThreshold} \
      ~{if defined(mapqMapqCutOff) then ("--mapq_cutoff " +  '"' + mapqMapqCutOff + '"') else ""} \
      ~{if defined(minMinDepthFilter) then ("--min_depth_filter " +  '"' + minMinDepthFilter + '"') else ""} \
      ~{if defined(maxMaxDepthFilter) then ("--max_depth_filter " +  '"' + maxMaxDepthFilter + '"') else ""} \
      ~{if defined(numNumPermutations) then ("--num_permutations " +  '"' + numNumPermutations + '"') else ""} \
      ~{if defined(numNumBootstraps) then ("--num_bootstraps " +  '"' + numNumBootstraps + '"') else ""} \
      ~{true="--ignore_duplicates" false="" ignoreIgnoreDuplicates} \
      ~{if defined(markerMarkerSize) then ("--marker_size " +  '"' + markerMarkerSize + '"') else ""} \
      ~{if defined(markerMarkerTransparency) then ("--marker_transparency " +  '"' + markerMarkerTransparency + '"') else ""} \
      ~{if defined(coordinateCoordinateScale) then ("--coordinate_scale " +  '"' + coordinateCoordinateScale + '"') else ""} \
      ~{if defined(includeIncludeFixed) then ("--include_fixed " +  '"' + includeIncludeFixed + '"') else ""} \
      ~{true="--use_counts" false="" useUseCounts}
  >>>
}