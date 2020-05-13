version 1.0

task SAGE {
  input {
    String codingCodingRegions
    String knownKnownHotspots
    String maxMaxHetBinomialLikelihood
    String minMinBaseQuality
    String minMinInDelQuality
    String minMinInDelVaf
    String minMinMappingQuality
    String minMinSnvQuality
    String minMinSnvVaf
    String minMinTumorReads
    String outOut
    String refRefGenome
    String referenceReference
    String referenceReferenceBam
    String tumorTumor
    String tumorTumorBam
  }
  command <<<
    SAGE \
      ~{if defined(codingCodingRegions) then ("-coding_regions " +  '"' + codingCodingRegions + '"') else ""} \
      ~{if defined(knownKnownHotspots) then ("-known_hotspots " +  '"' + knownKnownHotspots + '"') else ""} \
      ~{if defined(maxMaxHetBinomialLikelihood) then ("-max_het_binomial_likelihood " +  '"' + maxMaxHetBinomialLikelihood + '"') else ""} \
      ~{if defined(minMinBaseQuality) then ("-min_base_quality " +  '"' + minMinBaseQuality + '"') else ""} \
      ~{if defined(minMinInDelQuality) then ("-min_indel_quality " +  '"' + minMinInDelQuality + '"') else ""} \
      ~{if defined(minMinInDelVaf) then ("-min_indel_vaf " +  '"' + minMinInDelVaf + '"') else ""} \
      ~{if defined(minMinMappingQuality) then ("-min_mapping_quality " +  '"' + minMinMappingQuality + '"') else ""} \
      ~{if defined(minMinSnvQuality) then ("-min_snv_quality " +  '"' + minMinSnvQuality + '"') else ""} \
      ~{if defined(minMinSnvVaf) then ("-min_snv_vaf " +  '"' + minMinSnvVaf + '"') else ""} \
      ~{if defined(minMinTumorReads) then ("-min_tumor_reads " +  '"' + minMinTumorReads + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(refRefGenome) then ("-ref_genome " +  '"' + refRefGenome + '"') else ""} \
      ~{if defined(referenceReference) then ("-reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(referenceReferenceBam) then ("-reference_bam " +  '"' + referenceReferenceBam + '"') else ""} \
      ~{if defined(tumorTumor) then ("-tumor " +  '"' + tumorTumor + '"') else ""} \
      ~{if defined(tumorTumorBam) then ("-tumor_bam " +  '"' + tumorTumorBam + '"') else ""}
  >>>
}