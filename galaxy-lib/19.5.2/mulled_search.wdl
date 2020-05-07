version 1.0

task MulledSearch {
  input {
    String oO
    Boolean nonNonStrict
    String sS
  }
  command <<<
    mulled-search \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="--non-strict" false="" nonNonStrict} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""}
  >>>
}