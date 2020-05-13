version 1.0

task BatchcoverageDatabaseOutputfile {
  input {
    String? inputInputFile
    String? outputOutputFile
  }
  command <<<
    batchcoverage database outputfile \
      ~{inputInputFile} \
      ~{outputOutputFile}
  >>>
}