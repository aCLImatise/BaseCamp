version 1.0

task MultipleSplitLibrariesFastq.py {
  input {
    String inputInputDir
    String outputOutputDir
  }
  command <<<
    multiple_split_libraries_fastq.py \
      ~{if defined(inputInputDir) then ("--input_dir " +  '"' + inputInputDir + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}