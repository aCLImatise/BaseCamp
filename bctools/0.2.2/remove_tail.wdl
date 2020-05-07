version 1.0

task RemoveTail.pyInfileLength {
  input {
    String oO
    Boolean vV
    Boolean dD
  }
  command <<<
    remove_tail.py infile length \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD}
  >>>
}