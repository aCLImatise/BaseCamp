version 1.0

task BiopetFastqsplitter {
  input {
    String logLogLevel
    File inputInputFile
    File outputOutputFile
  }
  command <<<
    biopet-fastqsplitter \
      ~{if defined(logLogLevel) then ("--log_level " +  '"' + logLogLevel + '"') else ""} \
      ~{if defined(inputInputFile) then ("--inputFile " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--outputFile " +  '"' + outputOutputFile + '"') else ""}
  >>>
}