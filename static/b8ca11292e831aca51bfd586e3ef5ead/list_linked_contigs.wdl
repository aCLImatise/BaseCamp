version 1.0

task ListLinkedContigs {
  input {
    String? bankBankPath
  }
  command <<<
    list-linked-contigs \
      ~{bankBankPath}
  >>>
}