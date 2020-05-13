version 1.0

task SamplingUtilsRandSeq {
  input {
    Int numNumSeqs
    Float gcGcContent
    File inferInferParams
    Float codingCodingProp
    Int lengthLength
    Boolean constConstModel
    Float distDistLoc
    Boolean fastFastQ
    File saveSaveModel
    File readReadModel
    Boolean progressProgress
  }
  command <<<
    sampling-utils rand_seq \
      ~{if defined(numNumSeqs) then ("--num-seqs " +  '"' + numNumSeqs + '"') else ""} \
      ~{if defined(gcGcContent) then ("--gc-content " +  '"' + gcGcContent + '"') else ""} \
      ~{if defined(inferInferParams) then ("--infer-params " +  '"' + inferInferParams + '"') else ""} \
      ~{if defined(codingCodingProp) then ("--coding-prop " +  '"' + codingCodingProp + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{true="--const-model" false="" constConstModel} \
      ~{if defined(distDistLoc) then ("--dist-loc " +  '"' + distDistLoc + '"') else ""} \
      ~{true="--fastq" false="" fastFastQ} \
      ~{if defined(saveSaveModel) then ("--save-model " +  '"' + saveSaveModel + '"') else ""} \
      ~{if defined(readReadModel) then ("--read-model " +  '"' + readReadModel + '"') else ""} \
      ~{true="--progress" false="" progressProgress}
  >>>
}