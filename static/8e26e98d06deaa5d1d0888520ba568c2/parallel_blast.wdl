version 1.0

task ParallelBlast.py {
  input {
    String inInFilePath
    String outputOutputDir
  }
  command <<<
    parallel_blast.py \
      ~{if defined(inInFilePath) then ("--infile_path " +  '"' + inInFilePath + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}