version 1.0

task MergeOtuTables.py {
  input {
    String inputInputFps
    String outputOutputFp
  }
  command <<<
    merge_otu_tables.py \
      ~{if defined(inputInputFps) then ("--input_fps " +  '"' + inputInputFps + '"') else ""} \
      ~{if defined(outputOutputFp) then ("--output_fp " +  '"' + outputOutputFp + '"') else ""}
  >>>
}