version 1.0

task Bam2cfg.pl {
  input {
    Int qQ
    Boolean mM
    Boolean sS
    Boolean cC
    Float cC
    Int nN
    Float vV
    String fF
    Int bB
    Boolean gG
    String? bamBamFiles
  }
  command <<<
    bam2cfg.pl \
      ~{bamBamFiles} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{true="-m" false="" mM} \
      ~{true="-s" false="" sS} \
      ~{true="-C" false="" cC} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{true="-g" false="" gG}
  >>>
}