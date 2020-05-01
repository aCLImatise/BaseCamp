version 1.0

task KtGetTaxIDFromAcc {
  input {
    Boolean pP
    Boolean aA
  }
  command <<<
    ktGetTaxIDFromAcc \
      ~{true="-p" false="" pP} \
      ~{true="-a" false="" aA}
  >>>
}