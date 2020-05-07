version 1.0

task Vcfhdr2json {
  input {
    String inputInputFile
    String outputOutputFile
  }
  command <<<
    vcfhdr2json \
      ~{if defined(inputInputFile) then ("--input-file " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""}
  >>>
}