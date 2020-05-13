version 1.0

task MmseqsConvertmsa {
  input {
    Boolean identifierIdentifierField
    Boolean vV
  }
  command <<<
    mmseqs convertmsa \
      ~{true="--identifier-field" false="" identifierIdentifierField} \
      ~{true="-v" false="" vV}
  >>>
}