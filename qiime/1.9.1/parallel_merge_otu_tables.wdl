version 1.0

task ParallelMergeOtuTables.py {
  input {
    String inputInputFps
    String outputOutputDir
  }
  command <<<
    parallel_merge_otu_tables.py \
      ~{if defined(inputInputFps) then ("--input_fps " +  '"' + inputInputFps + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}