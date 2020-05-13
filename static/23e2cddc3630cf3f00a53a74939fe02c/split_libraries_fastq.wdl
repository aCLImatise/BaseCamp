version 1.0

task SplitLibrariesFastq.py {
  input {
    String sequenceSequenceReadFps
    String outputOutputDir
  }
  command <<<
    split_libraries_fastq.py \
      ~{if defined(sequenceSequenceReadFps) then ("--sequence_read_fps " +  '"' + sequenceSequenceReadFps + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}