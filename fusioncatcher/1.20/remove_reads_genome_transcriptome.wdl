version 1.0

task RemoveReadsGenomeTranscriptome.py {
  input {
    String inputInputMap1
    String inputInputMap2
    String mismatchesMismatchesColumn
    String outputOutput
    String tmpTmpDir
  }
  command <<<
    remove_reads_genome_transcriptome.py \
      ~{if defined(inputInputMap1) then ("--input_map_1 " +  '"' + inputInputMap1 + '"') else ""} \
      ~{if defined(inputInputMap2) then ("--input_map_2 " +  '"' + inputInputMap2 + '"') else ""} \
      ~{if defined(mismatchesMismatchesColumn) then ("--mismatches_column " +  '"' + mismatchesMismatchesColumn + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(tmpTmpDir) then ("--tmp_dir " +  '"' + tmpTmpDir + '"') else ""}
  >>>
}