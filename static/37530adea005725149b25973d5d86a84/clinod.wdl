version 1.0

task Clinod {
  input {
    String bmBm
    Boolean nonNonOls
    Boolean cleanCleanSequence
  }
  command <<<
    clinod \
      ~{if defined(bmBm) then ("-bm " +  '"' + bmBm + '"') else ""} \
      ~{true="-nonols" false="" nonNonOls} \
      ~{true="-clean_sequence" false="" cleanCleanSequence}
  >>>
}