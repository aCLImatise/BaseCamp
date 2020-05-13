version 1.0

task Fermi2.plUtglog {
  input {
    String? prefixPrefix
  }
  command <<<
    fermi2.pl utglog \
      ~{prefixPrefix}
  >>>
}