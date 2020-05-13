version 1.0

task ParallelAlignSeqsPynast.py {
  input {
    String inputInputFastAFp
    String outputOutputDir
  }
  command <<<
    parallel_align_seqs_pynast.py \
      ~{if defined(inputInputFastAFp) then ("--input_fasta_fp " +  '"' + inputInputFastAFp + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}