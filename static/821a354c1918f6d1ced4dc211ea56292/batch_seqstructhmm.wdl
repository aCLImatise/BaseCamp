version 1.0

task BatchSeqstructhmm {
  input {
    String coresCores
    String structureStructureType
    String motifMotifLength
    Boolean baumBaumWelch
    String flexibilityFlexibility
    String blockBlockSize
    String thresholdThreshold
    String terminationTerminationInterval
    String? dataDataDirectory
    String? proteinsProteins
    String? batchBatchDirectory
  }
  command <<<
    batch_seqstructhmm \
      ~{dataDataDirectory} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(structureStructureType) then ("--structure_type " +  '"' + structureStructureType + '"') else ""} \
      ~{if defined(motifMotifLength) then ("--motif_length " +  '"' + motifMotifLength + '"') else ""} \
      ~{true="--baum_welch" false="" baumBaumWelch} \
      ~{if defined(flexibilityFlexibility) then ("--flexibility " +  '"' + flexibilityFlexibility + '"') else ""} \
      ~{if defined(blockBlockSize) then ("--block_size " +  '"' + blockBlockSize + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(terminationTerminationInterval) then ("--termination_interval " +  '"' + terminationTerminationInterval + '"') else ""} \
      ~{proteinsProteins} \
      ~{batchBatchDirectory}
  >>>
}