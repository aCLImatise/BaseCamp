version 1.0

task COBALT {
  input {
    String gcGcProfile
    String minMinQuality
    String outputOutputDir
    String refRefGenome
    String referenceReference
    String referenceReferenceBam
    String threadsThreads
    String tumorTumor
    String tumorTumorBam
    String validationValidationStringency
  }
  command <<<
    COBALT \
      ~{if defined(gcGcProfile) then ("-gc_profile " +  '"' + gcGcProfile + '"') else ""} \
      ~{if defined(minMinQuality) then ("-min_quality " +  '"' + minMinQuality + '"') else ""} \
      ~{if defined(outputOutputDir) then ("-output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(refRefGenome) then ("-ref_genome " +  '"' + refRefGenome + '"') else ""} \
      ~{if defined(referenceReference) then ("-reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(referenceReferenceBam) then ("-reference_bam " +  '"' + referenceReferenceBam + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(tumorTumor) then ("-tumor " +  '"' + tumorTumor + '"') else ""} \
      ~{if defined(tumorTumorBam) then ("-tumor_bam " +  '"' + tumorTumorBam + '"') else ""} \
      ~{if defined(validationValidationStringency) then ("-validation_stringency " +  '"' + validationValidationStringency + '"') else ""}
  >>>
}