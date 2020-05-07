version 1.0

task Manorm {
  input {
    String p1P1
    String p2P2
    String r1R1
    String r2R2
    String s1S1
    String s2S2
    String wW
    String dD
    String nN
    String mM
    String pP
    Boolean sS
    String nameName1
    String nameName2
    String oO
  }
  command <<<
    manorm \
      ~{if defined(p1P1) then ("--p1 " +  '"' + p1P1 + '"') else ""} \
      ~{if defined(p2P2) then ("--p2 " +  '"' + p2P2 + '"') else ""} \
      ~{if defined(r1R1) then ("--r1 " +  '"' + r1R1 + '"') else ""} \
      ~{if defined(r2R2) then ("--r2 " +  '"' + r2R2 + '"') else ""} \
      ~{if defined(s1S1) then ("--s1 " +  '"' + s1S1 + '"') else ""} \
      ~{if defined(s2S2) then ("--s2 " +  '"' + s2S2 + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{if defined(nameName1) then ("--name1 " +  '"' + nameName1 + '"') else ""} \
      ~{if defined(nameName2) then ("--name2 " +  '"' + nameName2 + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}