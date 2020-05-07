version 1.0

task BatchcoverageInputfile {
  input {
    String? databaseDatabase
    String? inputInputFile
    String? outputOutputFile
  }
  command <<<
    batchcoverage inputfile \
      ~{databaseDatabase} \
      ~{inputInputFile} \
      ~{outputOutputFile}
  >>>
}