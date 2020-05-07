version 1.0

task KrocusAlleleDirectory {
  input {
    String? inputInputFastQ
  }
  command <<<
    krocus allele_directory \
      ~{inputInputFastQ}
  >>>
}