version 1.0

task SplitLibrariesLeaSeq.py {
  input {
    String sequenceSequenceReadFps
    String outputOutputDir
    String mappingMappingFp
  }
  command <<<
    split_libraries_lea_seq.py \
      ~{if defined(sequenceSequenceReadFps) then ("--sequence_read_fps " +  '"' + sequenceSequenceReadFps + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(mappingMappingFp) then ("--mapping_fp " +  '"' + mappingMappingFp + '"') else ""}
  >>>
}