version 1.0

task RunMetasv.py {
  input {
    Array[File]+ gGAtkVcf
    Array[String]+ mantaMantaVcf
    Array[String]+ lumpyLumpyVcf
    Array[String]+ cnvCnvKitVcf
    Array[String]+ whamWhamVcf
    String meanMeanReadLength
    String referenceReference
    Array[String]+ chromosomesChromosomes
    String gapsGaps
    Boolean filterFilterGaps
    Boolean keepKeepStandardContigs
    Array[String]+ bamsBams
    String iISizeMean
    String iISizeSd
    String wiggleWiggle
    String insInsWiggle
    Int minsMinsVLen
    Int maxMaxSvLen
    String overlapOverlapRatio
    Int minMinAvgBaseQual
    Int minMinMapq
    Int minMinSoftClip
    Int maxMaxNm
    Int minMinMatches
    Int minMinSupportIns
    Int minMinSupportFracIns
    Int maxMaxInsIntervals
    String meanMeanReadCoverage
    Int minMinInsCovFrac
    Int maxMaxInsCovFrac
    String scScOtherScale
    String extractionExtractionMaxReadPairs
    String spadesSpadesMaxIntervalSize
    String assemblyAssemblyMaxTools
    String assemblyAssemblyPad
    Boolean stopStopSpadesOnFail
    String ageAge
    String ageAgeTimeout
    Int minMinInVSubAlignLen
    Int minMinDelSubAlignLen
    String ageAgeWindow
    Boolean boostBoostSc
    String gtGtWindow
    String gtGtNormalFrac
    Boolean enableEnablePerToolOutput
    String workdirWorkdir
    String numNumThreads
    String outdirOutdir
  }
  command <<<
    run_metasv.py \
      ~{if defined(gGAtkVcf) then ("--gatk_vcf " +  '"' + gGAtkVcf + '"') else ""} \
      ~{if defined(mantaMantaVcf) then ("--manta_vcf " +  '"' + mantaMantaVcf + '"') else ""} \
      ~{if defined(lumpyLumpyVcf) then ("--lumpy_vcf " +  '"' + lumpyLumpyVcf + '"') else ""} \
      ~{if defined(cnvCnvKitVcf) then ("--cnvkit_vcf " +  '"' + cnvCnvKitVcf + '"') else ""} \
      ~{if defined(whamWhamVcf) then ("--wham_vcf " +  '"' + whamWhamVcf + '"') else ""} \
      ~{if defined(meanMeanReadLength) then ("--mean_read_length " +  '"' + meanMeanReadLength + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(chromosomesChromosomes) then ("--chromosomes " +  '"' + chromosomesChromosomes + '"') else ""} \
      ~{if defined(gapsGaps) then ("--gaps " +  '"' + gapsGaps + '"') else ""} \
      ~{true="--filter_gaps" false="" filterFilterGaps} \
      ~{true="--keep_standard_contigs" false="" keepKeepStandardContigs} \
      ~{if defined(bamsBams) then ("--bams " +  '"' + bamsBams + '"') else ""} \
      ~{if defined(iISizeMean) then ("--isize_mean " +  '"' + iISizeMean + '"') else ""} \
      ~{if defined(iISizeSd) then ("--isize_sd " +  '"' + iISizeSd + '"') else ""} \
      ~{if defined(wiggleWiggle) then ("--wiggle " +  '"' + wiggleWiggle + '"') else ""} \
      ~{if defined(insInsWiggle) then ("--inswiggle " +  '"' + insInsWiggle + '"') else ""} \
      ~{if defined(minsMinsVLen) then ("--minsvlen " +  '"' + minsMinsVLen + '"') else ""} \
      ~{if defined(maxMaxSvLen) then ("--maxsvlen " +  '"' + maxMaxSvLen + '"') else ""} \
      ~{if defined(overlapOverlapRatio) then ("--overlap_ratio " +  '"' + overlapOverlapRatio + '"') else ""} \
      ~{if defined(minMinAvgBaseQual) then ("--min_avg_base_qual " +  '"' + minMinAvgBaseQual + '"') else ""} \
      ~{if defined(minMinMapq) then ("--min_mapq " +  '"' + minMinMapq + '"') else ""} \
      ~{if defined(minMinSoftClip) then ("--min_soft_clip " +  '"' + minMinSoftClip + '"') else ""} \
      ~{if defined(maxMaxNm) then ("--max_nm " +  '"' + maxMaxNm + '"') else ""} \
      ~{if defined(minMinMatches) then ("--min_matches " +  '"' + minMinMatches + '"') else ""} \
      ~{if defined(minMinSupportIns) then ("--min_support_ins " +  '"' + minMinSupportIns + '"') else ""} \
      ~{if defined(minMinSupportFracIns) then ("--min_support_frac_ins " +  '"' + minMinSupportFracIns + '"') else ""} \
      ~{if defined(maxMaxInsIntervals) then ("--max_ins_intervals " +  '"' + maxMaxInsIntervals + '"') else ""} \
      ~{if defined(meanMeanReadCoverage) then ("--mean_read_coverage " +  '"' + meanMeanReadCoverage + '"') else ""} \
      ~{if defined(minMinInsCovFrac) then ("--min_ins_cov_frac " +  '"' + minMinInsCovFrac + '"') else ""} \
      ~{if defined(maxMaxInsCovFrac) then ("--max_ins_cov_frac " +  '"' + maxMaxInsCovFrac + '"') else ""} \
      ~{if defined(scScOtherScale) then ("--sc_other_scale " +  '"' + scScOtherScale + '"') else ""} \
      ~{if defined(extractionExtractionMaxReadPairs) then ("--extraction_max_read_pairs " +  '"' + extractionExtractionMaxReadPairs + '"') else ""} \
      ~{if defined(spadesSpadesMaxIntervalSize) then ("--spades_max_interval_size " +  '"' + spadesSpadesMaxIntervalSize + '"') else ""} \
      ~{if defined(assemblyAssemblyMaxTools) then ("--assembly_max_tools " +  '"' + assemblyAssemblyMaxTools + '"') else ""} \
      ~{if defined(assemblyAssemblyPad) then ("--assembly_pad " +  '"' + assemblyAssemblyPad + '"') else ""} \
      ~{true="--stop_spades_on_fail" false="" stopStopSpadesOnFail} \
      ~{if defined(ageAge) then ("--age " +  '"' + ageAge + '"') else ""} \
      ~{if defined(ageAgeTimeout) then ("--age_timeout " +  '"' + ageAgeTimeout + '"') else ""} \
      ~{if defined(minMinInVSubAlignLen) then ("--min_inv_subalign_len " +  '"' + minMinInVSubAlignLen + '"') else ""} \
      ~{if defined(minMinDelSubAlignLen) then ("--min_del_subalign_len " +  '"' + minMinDelSubAlignLen + '"') else ""} \
      ~{if defined(ageAgeWindow) then ("--age_window " +  '"' + ageAgeWindow + '"') else ""} \
      ~{true="--boost_sc" false="" boostBoostSc} \
      ~{if defined(gtGtWindow) then ("--gt_window " +  '"' + gtGtWindow + '"') else ""} \
      ~{if defined(gtGtNormalFrac) then ("--gt_normal_frac " +  '"' + gtGtNormalFrac + '"') else ""} \
      ~{true="--enable_per_tool_output" false="" enableEnablePerToolOutput} \
      ~{if defined(workdirWorkdir) then ("--workdir " +  '"' + workdirWorkdir + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num_threads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""}
  >>>
}