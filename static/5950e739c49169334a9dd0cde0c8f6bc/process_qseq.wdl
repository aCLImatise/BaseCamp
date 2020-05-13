version 1.0

task ProcessQseq.py {
  input {
    String inputInputDir
    String outputOutputDir
    String readRead
  }
  command <<<
    process_qseq.py \
      ~{if defined(inputInputDir) then ("--input_dir " +  '"' + inputInputDir + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(readRead) then ("--read " +  '"' + readRead + '"') else ""}
  >>>
}