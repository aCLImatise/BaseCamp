version 1.0

task SplitSequenceFileOnSampleIds.py {
  input {
    String inputInputSeqsFp
    String outputOutputDir
  }
  command <<<
    split_sequence_file_on_sample_ids.py \
      ~{if defined(inputInputSeqsFp) then ("--input_seqs_fp " +  '"' + inputInputSeqsFp + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}