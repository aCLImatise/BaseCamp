version 1.0

task AMBER {
  input {
    String lociLoci
    String maxMaxDepthPercent
    String maxMaxHetAfPercent
    String minMinBaseQuality
    String minMinDepthPercent
    String minMinHetAfPercent
    String minMinMappingQuality
    String outputOutputDir
    String refRefGenome
    String referenceReference
    String referenceReferenceBam
    String threadsThreads
    String tumorTumor
    String tumorTumorBam
    Boolean tumorTumorOnly
    String tumorTumorOnlyMinSupport
    String tumorTumorOnlyMinVaf
    String validationValidationStringency
  }
  command <<<
    AMBER \
      ~{if defined(lociLoci) then ("-loci " +  '"' + lociLoci + '"') else ""} \
      ~{if defined(maxMaxDepthPercent) then ("-max_depth_percent " +  '"' + maxMaxDepthPercent + '"') else ""} \
      ~{if defined(maxMaxHetAfPercent) then ("-max_het_af_percent " +  '"' + maxMaxHetAfPercent + '"') else ""} \
      ~{if defined(minMinBaseQuality) then ("-min_base_quality " +  '"' + minMinBaseQuality + '"') else ""} \
      ~{if defined(minMinDepthPercent) then ("-min_depth_percent " +  '"' + minMinDepthPercent + '"') else ""} \
      ~{if defined(minMinHetAfPercent) then ("-min_het_af_percent " +  '"' + minMinHetAfPercent + '"') else ""} \
      ~{if defined(minMinMappingQuality) then ("-min_mapping_quality " +  '"' + minMinMappingQuality + '"') else ""} \
      ~{if defined(outputOutputDir) then ("-output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(refRefGenome) then ("-ref_genome " +  '"' + refRefGenome + '"') else ""} \
      ~{if defined(referenceReference) then ("-reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(referenceReferenceBam) then ("-reference_bam " +  '"' + referenceReferenceBam + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(tumorTumor) then ("-tumor " +  '"' + tumorTumor + '"') else ""} \
      ~{if defined(tumorTumorBam) then ("-tumor_bam " +  '"' + tumorTumorBam + '"') else ""} \
      ~{true="-tumor_only" false="" tumorTumorOnly} \
      ~{if defined(tumorTumorOnlyMinSupport) then ("-tumor_only_min_support " +  '"' + tumorTumorOnlyMinSupport + '"') else ""} \
      ~{if defined(tumorTumorOnlyMinVaf) then ("-tumor_only_min_vaf " +  '"' + tumorTumorOnlyMinVaf + '"') else ""} \
      ~{if defined(validationValidationStringency) then ("-validation_stringency " +  '"' + validationValidationStringency + '"') else ""}
  >>>
}