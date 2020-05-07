version 1.0

task NaiveVariantCaller.py {
  input {
    String bamBam
    String indexIndex
    String outputOutputVcfFilename
    String referenceReferenceGenomeFilename
    Boolean variantsVariantsOnly
    Boolean useUseStrand
    String ploidyPloidy
    Int minMinSupportDepth
    Int minMinBaseQuality
    Int minMinMappingQuality
    String coverageCoverageDType
    Boolean allowAllowOutOfBoundsPositions
    Boolean safeSafe
    String regionRegion
    String regionsRegionsFilename
    String regionsRegionsFileColumns
  }
  command <<<
    naive_variant_caller.py \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(outputOutputVcfFilename) then ("--output_vcf_filename " +  '"' + outputOutputVcfFilename + '"') else ""} \
      ~{if defined(referenceReferenceGenomeFilename) then ("--reference_genome_filename " +  '"' + referenceReferenceGenomeFilename + '"') else ""} \
      ~{true="--variants_only" false="" variantsVariantsOnly} \
      ~{true="--use_strand" false="" useUseStrand} \
      ~{if defined(ploidyPloidy) then ("--ploidy " +  '"' + ploidyPloidy + '"') else ""} \
      ~{if defined(minMinSupportDepth) then ("--min_support_depth " +  '"' + minMinSupportDepth + '"') else ""} \
      ~{if defined(minMinBaseQuality) then ("--min_base_quality " +  '"' + minMinBaseQuality + '"') else ""} \
      ~{if defined(minMinMappingQuality) then ("--min_mapping_quality " +  '"' + minMinMappingQuality + '"') else ""} \
      ~{if defined(coverageCoverageDType) then ("--coverage_dtype " +  '"' + coverageCoverageDType + '"') else ""} \
      ~{true="--allow_out_of_bounds_positions" false="" allowAllowOutOfBoundsPositions} \
      ~{true="--safe" false="" safeSafe} \
      ~{if defined(regionRegion) then ("--region " +  '"' + regionRegion + '"') else ""} \
      ~{if defined(regionsRegionsFilename) then ("--regions_filename " +  '"' + regionsRegionsFilename + '"') else ""} \
      ~{if defined(regionsRegionsFileColumns) then ("--regions_file_columns " +  '"' + regionsRegionsFileColumns + '"') else ""}
  >>>
}