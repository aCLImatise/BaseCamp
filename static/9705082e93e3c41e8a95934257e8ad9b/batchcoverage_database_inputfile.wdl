version 1.0

task BatchcoverageDatabaseInputfile {
  input {
    String? outputOutputFile
  }
  command <<<
    batchcoverage database inputfile \
      ~{outputOutputFile}
  >>>
}