version 1.0

task ParallelMapReadsToReference.py {
  input {
    String inputInputSeqsFilePath
    String outputOutputDir
    String refseqRefseqSFp
  }
  command <<<
    parallel_map_reads_to_reference.py \
      ~{if defined(inputInputSeqsFilePath) then ("--input_seqs_filepath " +  '"' + inputInputSeqsFilePath + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(refseqRefseqSFp) then ("--refseqs_fp " +  '"' + refseqRefseqSFp + '"') else ""}
  >>>
}