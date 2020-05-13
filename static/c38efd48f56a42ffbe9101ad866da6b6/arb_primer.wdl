version 1.0

task ArbPrimer {
  input {
    String? dbnameDbname
  }
  command <<<
    arb_primer \
      ~{dbnameDbname}
  >>>
}