version 1.0

task AttachPileupVAF.py {
  input {
    String myMyVcfFile
    String normalNormalSampleName
    String tumorTumorSampleName
    String normalNormalPileUpFile
    String tumorTumorPileUpFile
    String referenceReferenceFastAFai
    String referenceReferenceFastADict
    Boolean pilePileUpVariantAlleleFrequency
    Boolean pilePileUpDp4
    String outputOutputFile
  }
  command <<<
    attach_pileupVAF.py \
      ~{if defined(myMyVcfFile) then ("--my-vcf-file " +  '"' + myMyVcfFile + '"') else ""} \
      ~{if defined(normalNormalSampleName) then ("--normal-sample-name " +  '"' + normalNormalSampleName + '"') else ""} \
      ~{if defined(tumorTumorSampleName) then ("--tumor-sample-name " +  '"' + tumorTumorSampleName + '"') else ""} \
      ~{if defined(normalNormalPileUpFile) then ("--normal-pileup-file " +  '"' + normalNormalPileUpFile + '"') else ""} \
      ~{if defined(tumorTumorPileUpFile) then ("--tumor-pileup-file " +  '"' + tumorTumorPileUpFile + '"') else ""} \
      ~{if defined(referenceReferenceFastAFai) then ("--reference-fasta-fai " +  '"' + referenceReferenceFastAFai + '"') else ""} \
      ~{if defined(referenceReferenceFastADict) then ("--reference-fasta-dict " +  '"' + referenceReferenceFastADict + '"') else ""} \
      ~{true="--pileup-variant-allele-frequency" false="" pilePileUpVariantAlleleFrequency} \
      ~{true="--pileup-DP4" false="" pilePileUpDp4} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""}
  >>>
}