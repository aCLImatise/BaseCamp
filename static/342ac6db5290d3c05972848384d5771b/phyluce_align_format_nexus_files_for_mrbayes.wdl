version 1.0

task PhyluceAlignFormatNexusFilesForMrbayes {
  input {
    String alignmentsAlignments
    String modelsModels
    String outputOutput
    Boolean fullyFullyPartition
    Boolean interleaveInterleave
    Boolean unlinkUnlink
  }
  command <<<
    phyluce_align_format_nexus_files_for_mrbayes \
      ~{if defined(alignmentsAlignments) then ("--alignments " +  '"' + alignmentsAlignments + '"') else ""} \
      ~{if defined(modelsModels) then ("--models " +  '"' + modelsModels + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--fully-partition" false="" fullyFullyPartition} \
      ~{true="--interleave" false="" interleaveInterleave} \
      ~{true="--unlink" false="" unlinkUnlink}
  >>>
}