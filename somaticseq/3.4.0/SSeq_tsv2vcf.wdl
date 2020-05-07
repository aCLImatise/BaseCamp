version 1.0

task SSeqTsv2vcf.py {
  input {
    String tsvTsvIn
    String vcfVcfOut
    String passPassThreshold
    String lowLowQualThreshold
    String homHomThreshold
    String hetHetThreshold
    String normalNormalSampleName
    String tumorTumorSampleName
    Boolean toolsTools
    Boolean emitEmitAll
    Boolean phredPhredScale
    Boolean singleSingleSample
    Boolean pairedPairedSamples
  }
  command <<<
    SSeq_tsv2vcf.py \
      ~{if defined(tsvTsvIn) then ("--tsv-in " +  '"' + tsvTsvIn + '"') else ""} \
      ~{if defined(vcfVcfOut) then ("--vcf-out " +  '"' + vcfVcfOut + '"') else ""} \
      ~{if defined(passPassThreshold) then ("--pass-threshold " +  '"' + passPassThreshold + '"') else ""} \
      ~{if defined(lowLowQualThreshold) then ("--lowqual-threshold " +  '"' + lowLowQualThreshold + '"') else ""} \
      ~{if defined(homHomThreshold) then ("--hom-threshold " +  '"' + homHomThreshold + '"') else ""} \
      ~{if defined(hetHetThreshold) then ("--het-threshold " +  '"' + hetHetThreshold + '"') else ""} \
      ~{if defined(normalNormalSampleName) then ("--normal-sample-name " +  '"' + normalNormalSampleName + '"') else ""} \
      ~{if defined(tumorTumorSampleName) then ("--tumor-sample-name " +  '"' + tumorTumorSampleName + '"') else ""} \
      ~{true="-tools" false="" toolsTools} \
      ~{true="--emit-all" false="" emitEmitAll} \
      ~{true="--phred-scale" false="" phredPhredScale} \
      ~{true="--single-sample" false="" singleSingleSample} \
      ~{true="--paired-samples" false="" pairedPairedSamples}
  >>>
}