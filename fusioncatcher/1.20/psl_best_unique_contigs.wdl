version 1.0

task PslBestUniqueContigs.py {
  input {
    String inputInput
    Boolean sameSameGene
    String outputOutput
    String tiesTies
    String tiesTiesOverlappingS
    String outputOutputMultipleAlignments
    String outputOutputUniqueAlignments
    String anchorAnchor
    String processesProcesses
    String bufferBufferSize
    String mismatchesMismatches
    String tmpTmpDir
  }
  command <<<
    psl_best_unique_contigs.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{true="--same_gene" false="" sameSameGene} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(tiesTies) then ("--ties " +  '"' + tiesTies + '"') else ""} \
      ~{if defined(tiesTiesOverlappingS) then ("--ties-overlappings " +  '"' + tiesTiesOverlappingS + '"') else ""} \
      ~{if defined(outputOutputMultipleAlignments) then ("--output_multiple_alignments " +  '"' + outputOutputMultipleAlignments + '"') else ""} \
      ~{if defined(outputOutputUniqueAlignments) then ("--output_unique_alignments " +  '"' + outputOutputUniqueAlignments + '"') else ""} \
      ~{if defined(anchorAnchor) then ("--anchor " +  '"' + anchorAnchor + '"') else ""} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""} \
      ~{if defined(bufferBufferSize) then ("--buffer-size " +  '"' + bufferBufferSize + '"') else ""} \
      ~{if defined(mismatchesMismatches) then ("--mismatches " +  '"' + mismatchesMismatches + '"') else ""} \
      ~{if defined(tmpTmpDir) then ("--tmp_dir " +  '"' + tmpTmpDir + '"') else ""}
  >>>
}