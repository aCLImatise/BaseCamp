version 1.0

task Longshot {
  input {
    Boolean autoAutoMaxCov
    Boolean stableStableAlignment
    Boolean forceForceOverwrite
    Boolean maxMaxAlignment
    Boolean noNoHaps
    String bamBam
    String refRef
    String outOut
    String regionRegion
    String potentialPotentialVariants
    String outOutBam
    Int minMinCov
    Int maxMaxCov
    Int minMinMapq
    Float minMinAlleleQual
    Float hapHapAssignmentQual
    Float potentialPotentialSnvCutOff
    Int minMinAltCount
    Float minMinAltFrac
    Float hapHapConvergeDelta
    Int anchorAnchorLength
    Int maxMaxSnVs
    Int maxMaxWindow
    Int maxMaxCigarInDel
    String bandBandWidth
    String densityDensityParams
    String sampleSampleId
    Float homHomSnvRate
    Float hetHetSnvRate
    Float tsTsTvRatio
    Float strandStrandBiasPValueCutOff
    File variantVariantDebugDir
  }
  command <<<
    longshot \
      ~{true="--auto_max_cov" false="" autoAutoMaxCov} \
      ~{true="--stable_alignment" false="" stableStableAlignment} \
      ~{true="--force_overwrite" false="" forceForceOverwrite} \
      ~{true="--max_alignment" false="" maxMaxAlignment} \
      ~{true="--no_haps" false="" noNoHaps} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(regionRegion) then ("--region " +  '"' + regionRegion + '"') else ""} \
      ~{if defined(potentialPotentialVariants) then ("--potential_variants " +  '"' + potentialPotentialVariants + '"') else ""} \
      ~{if defined(outOutBam) then ("--out_bam " +  '"' + outOutBam + '"') else ""} \
      ~{if defined(minMinCov) then ("--min_cov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(maxMaxCov) then ("--max_cov " +  '"' + maxMaxCov + '"') else ""} \
      ~{if defined(minMinMapq) then ("--min_mapq " +  '"' + minMinMapq + '"') else ""} \
      ~{if defined(minMinAlleleQual) then ("--min_allele_qual " +  '"' + minMinAlleleQual + '"') else ""} \
      ~{if defined(hapHapAssignmentQual) then ("--hap_assignment_qual " +  '"' + hapHapAssignmentQual + '"') else ""} \
      ~{if defined(potentialPotentialSnvCutOff) then ("--potential_snv_cutoff " +  '"' + potentialPotentialSnvCutOff + '"') else ""} \
      ~{if defined(minMinAltCount) then ("--min_alt_count " +  '"' + minMinAltCount + '"') else ""} \
      ~{if defined(minMinAltFrac) then ("--min_alt_frac " +  '"' + minMinAltFrac + '"') else ""} \
      ~{if defined(hapHapConvergeDelta) then ("--hap_converge_delta " +  '"' + hapHapConvergeDelta + '"') else ""} \
      ~{if defined(anchorAnchorLength) then ("--anchor_length " +  '"' + anchorAnchorLength + '"') else ""} \
      ~{if defined(maxMaxSnVs) then ("--max_snvs " +  '"' + maxMaxSnVs + '"') else ""} \
      ~{if defined(maxMaxWindow) then ("--max_window " +  '"' + maxMaxWindow + '"') else ""} \
      ~{if defined(maxMaxCigarInDel) then ("--max_cigar_indel " +  '"' + maxMaxCigarInDel + '"') else ""} \
      ~{if defined(bandBandWidth) then ("--band_width " +  '"' + bandBandWidth + '"') else ""} \
      ~{if defined(densityDensityParams) then ("--density_params " +  '"' + densityDensityParams + '"') else ""} \
      ~{if defined(sampleSampleId) then ("--sample_id " +  '"' + sampleSampleId + '"') else ""} \
      ~{if defined(homHomSnvRate) then ("--hom_snv_rate " +  '"' + homHomSnvRate + '"') else ""} \
      ~{if defined(hetHetSnvRate) then ("--het_snv_rate " +  '"' + hetHetSnvRate + '"') else ""} \
      ~{if defined(tsTsTvRatio) then ("--ts_tv_ratio " +  '"' + tsTsTvRatio + '"') else ""} \
      ~{if defined(strandStrandBiasPValueCutOff) then ("--strand_bias_pvalue_cutoff " +  '"' + strandStrandBiasPValueCutOff + '"') else ""} \
      ~{if defined(variantVariantDebugDir) then ("--variant_debug_dir " +  '"' + variantVariantDebugDir + '"') else ""}
  >>>
}