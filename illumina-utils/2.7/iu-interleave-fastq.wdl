version 1.0

task IuInterleaveFastq {
  input {
    String outputOutputFilePath
  }
  command <<<
    iu-interleave-fastq \
      ~{if defined(outputOutputFilePath) then ("--output-file-path " +  '"' + outputOutputFilePath + '"') else ""}
  >>>
}