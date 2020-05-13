version 1.0

task Ribosum2ccRibosumName {
  input {
    String? riboRiboSumFile
  }
  command <<<
    ribosum2cc ribosum-name \
      ~{riboRiboSumFile}
  >>>
}