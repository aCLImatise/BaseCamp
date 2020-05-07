version 1.0

task ToUpperOutFile {
  input {
    String? inInFile
    String? outfileOutfile
  }
  command <<<
    toUpper outFile \
      ~{inInFile} \
      ~{outfileOutfile}
  >>>
}