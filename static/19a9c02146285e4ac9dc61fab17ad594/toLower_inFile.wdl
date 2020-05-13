version 1.0

task ToLowerInFile {
  input {
    String? outfileOutfile
  }
  command <<<
    toLower inFile \
      ~{outfileOutfile}
  >>>
}