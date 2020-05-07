version 1.0

task FindQueryBreaks {
  input {
    String bB
    String wW
    String lL
    String fF
    Boolean sS
    Boolean cC
    Boolean bB
    Boolean cC
    Boolean aA
  }
  command <<<
    find-query-breaks \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{true="-C" false="" cC} \
      ~{true="-B" false="" bB} \
      ~{true="-c" false="" cC} \
      ~{true="-a" false="" aA}
  >>>
}