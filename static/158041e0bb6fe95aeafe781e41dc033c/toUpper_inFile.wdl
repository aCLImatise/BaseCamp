version 1.0

task ToUpperInFile {
  input {
    String? outfileOutfile
  }
  command <<<
    toUpper inFile \
      ~{outfileOutfile}
  >>>
}