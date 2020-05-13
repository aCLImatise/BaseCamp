version 1.0

task BatchcoverageOutputfile {
  input {
    String? databaseDatabase
    String? inputInputFile
    String? outputOutputFile
  }
  command <<<
    batchcoverage outputfile \
      ~{databaseDatabase} \
      ~{inputInputFile} \
      ~{outputOutputFile}
  >>>
}