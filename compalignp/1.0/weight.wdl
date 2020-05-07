version 1.0

task Weight {
  input {
    String bB
    String fF
    File oO
    Boolean pP
    String sS
    Boolean vV
    String inInFormat
    Boolean quietQuiet
  }
  command <<<
    weight \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}