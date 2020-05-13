version 1.0

task HtsboxAbreak {
  input {
    Boolean bB
    Int lL
    Int sS
    Int qQ
    Int dD
    Boolean pP
    Boolean cC
    Boolean uU
    File fF
    Float mM
    Int gG
  }
  command <<<
    htsbox abreak \
      ~{true="-b" false="" bB} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{true="-c" false="" cC} \
      ~{true="-u" false="" uU} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""}
  >>>
}