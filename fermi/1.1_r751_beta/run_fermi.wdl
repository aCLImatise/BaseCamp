version 1.0

task RunFermi.pl {
  input {
    Boolean pP
    Boolean cC
    Boolean dD
    Boolean bB
    Boolean cC
    File eE
    Int tT
    String pP
    Int lL
    Int kK
  }
  command <<<
    run-fermi.pl \
      ~{true="-P" false="" pP} \
      ~{true="-c" false="" cC} \
      ~{true="-D" false="" dD} \
      ~{true="-B" false="" bB} \
      ~{true="-C" false="" cC} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""}
  >>>
}