version 1.0

task BreakPointInspector {
  input {
    String contaminationContaminationFraction
    String outputOutputVcf
    String proximityProximity
    String refRef
    String refRefSlice
    String tumorTumor
    String tumorTumorSlice
    String vcfVcf
    String? breakBreakPointInspector
    String? argArg
  }
  command <<<
    break-point-inspector \
      ~{breakBreakPointInspector} \
      ~{if defined(contaminationContaminationFraction) then ("-contamination_fraction " +  '"' + contaminationContaminationFraction + '"') else ""} \
      ~{if defined(outputOutputVcf) then ("-output_vcf " +  '"' + outputOutputVcf + '"') else ""} \
      ~{if defined(proximityProximity) then ("-proximity " +  '"' + proximityProximity + '"') else ""} \
      ~{if defined(refRef) then ("-ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(refRefSlice) then ("-ref_slice " +  '"' + refRefSlice + '"') else ""} \
      ~{if defined(tumorTumor) then ("-tumor " +  '"' + tumorTumor + '"') else ""} \
      ~{if defined(tumorTumorSlice) then ("-tumor_slice " +  '"' + tumorTumorSlice + '"') else ""} \
      ~{if defined(vcfVcf) then ("-vcf " +  '"' + vcfVcf + '"') else ""} \
      ~{argArg}
  >>>
}