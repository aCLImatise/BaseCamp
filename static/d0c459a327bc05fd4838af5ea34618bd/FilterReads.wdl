version 1.0

task FilterReads.py {
  input {
    File iI
    File oO
    Boolean kK
  }
  command <<<
    FilterReads.py \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-k" false="" kK}
  >>>
}