version 1.0

task ExtractReadsFromInterleavedFile.py {
  input {
    String inputInputFp
    String outputOutputDir
  }
  command <<<
    extract_reads_from_interleaved_file.py \
      ~{if defined(inputInputFp) then ("--input_fp " +  '"' + inputInputFp + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}