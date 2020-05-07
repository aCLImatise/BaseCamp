version 1.0

task Ribosum2ccRibosumFile {
  input {
    String? riboRiboSumName
    String? riboRiboSumFile
  }
  command <<<
    ribosum2cc ribosum-file \
      ~{riboRiboSumName} \
      ~{riboRiboSumFile}
  >>>
}