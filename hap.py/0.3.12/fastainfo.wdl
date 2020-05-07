version 1.0

task Fastainfo {
  input {
    String inputInputFile
    String outputOutputFile
  }
  command <<<
    fastainfo \
      ~{if defined(inputInputFile) then ("--input-file " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""}
  >>>
}