version 1.0

task PslHisto {
  input {
    String multiMultiOnly
    String nonzeroNonzero
  }
  command <<<
    pslHisto \
      ~{if defined(multiMultiOnly) then ("-multiOnly " +  '"' + multiMultiOnly + '"') else ""} \
      ~{if defined(nonzeroNonzero) then ("-nonZero " +  '"' + nonzeroNonzero + '"') else ""}
  >>>
}