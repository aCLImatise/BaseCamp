version 1.0

task ParallelPickOtusBlast.py {
  input {
    String inputInputFastAFp
    String outputOutputDir
  }
  command <<<
    parallel_pick_otus_blast.py \
      ~{if defined(inputInputFastAFp) then ("--input_fasta_fp " +  '"' + inputInputFastAFp + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}