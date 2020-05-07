version 1.0

task KrocusInputFastq {
  input {
    String? alleleAlleleDirectory
    String? inputInputFastQ
  }
  command <<<
    krocus input_fastq \
      ~{alleleAlleleDirectory} \
      ~{inputInputFastQ}
  >>>
}