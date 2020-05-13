version 1.0

task UpdateClrRanges {
  input {
    Boolean iI
    String? bankBankName
    String? seqnameend5end3txtSeqnameend5end3txt
  }
  command <<<
    updateClrRanges \
      ~{bankBankName} \
      ~{true="-i" false="" iI} \
      ~{seqnameend5end3txtSeqnameend5end3txt}
  >>>
}