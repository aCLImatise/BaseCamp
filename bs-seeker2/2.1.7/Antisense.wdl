version 1.0

task Antisense.py {
  input {
    File iI
    File oO
    Int lL
    Boolean kK
    String? 5050
  }
  command <<<
    Antisense.py \
      ~{5050} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{true="-k" false="" kK}
  >>>
}