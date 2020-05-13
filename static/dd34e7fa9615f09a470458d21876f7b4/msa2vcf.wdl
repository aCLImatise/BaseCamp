version 1.0

task Msa2vcf.py {
  input {
    String referenceReferenceChr
    String referenceReferenceStart
    String referenceReferenceSequence
    String bcfBcfTools
    String? inputInput
    String? outputOutput
  }
  command <<<
    msa2vcf.py \
      ~{inputInput} \
      ~{if defined(referenceReferenceChr) then ("--reference-chr " +  '"' + referenceReferenceChr + '"') else ""} \
      ~{if defined(referenceReferenceStart) then ("--reference-start " +  '"' + referenceReferenceStart + '"') else ""} \
      ~{if defined(referenceReferenceSequence) then ("--reference-sequence " +  '"' + referenceReferenceSequence + '"') else ""} \
      ~{if defined(bcfBcfTools) then ("--bcftools " +  '"' + bcfBcfTools + '"') else ""} \
      ~{outputOutput}
  >>>
}