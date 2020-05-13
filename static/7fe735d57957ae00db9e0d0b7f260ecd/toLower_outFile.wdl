version 1.0

task ToLowerOutFile {
  input {
    String? inInFile
    String? outfileOutfile
  }
  command <<<
    toLower outFile \
      ~{inInFile} \
      ~{outfileOutfile}
  >>>
}