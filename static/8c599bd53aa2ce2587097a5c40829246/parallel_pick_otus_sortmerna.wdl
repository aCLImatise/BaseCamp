version 1.0

task ParallelPickOtusSortmerna.py {
  input {
    String inputInputFastAFp
    String outputOutputDir
    String refseqRefseqSFp
  }
  command <<<
    parallel_pick_otus_sortmerna.py \
      ~{if defined(inputInputFastAFp) then ("--input_fasta_fp " +  '"' + inputInputFastAFp + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(refseqRefseqSFp) then ("--refseqs_fp " +  '"' + refseqRefseqSFp + '"') else ""}
  >>>
}