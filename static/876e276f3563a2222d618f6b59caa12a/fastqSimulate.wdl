version 1.0

task FastqSimulate {
  input {
    String fF
    String oO
    String lL
    String nN
    String xX
    String xX
    String emEm
    String eiEi
    String edEd
    Boolean allowAllowGaps
    Boolean allAllOwns
    Boolean noNoJunction
    String normalNormal
    Boolean seSe
    String ccCc
    String pePe
    String mpMp
  }
  command <<<
    fastqSimulate \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{if defined(xX) then ("-X " +  '"' + xX + '"') else ""} \
      ~{if defined(emEm) then ("-em " +  '"' + emEm + '"') else ""} \
      ~{if defined(eiEi) then ("-ei " +  '"' + eiEi + '"') else ""} \
      ~{if defined(edEd) then ("-ed " +  '"' + edEd + '"') else ""} \
      ~{true="-allowgaps" false="" allowAllowGaps} \
      ~{true="-allowns" false="" allAllOwns} \
      ~{true="-nojunction" false="" noNoJunction} \
      ~{if defined(normalNormal) then ("-normal " +  '"' + normalNormal + '"') else ""} \
      ~{true="-se" false="" seSe} \
      ~{if defined(ccCc) then ("-cc " +  '"' + ccCc + '"') else ""} \
      ~{if defined(pePe) then ("-pe " +  '"' + pePe + '"') else ""} \
      ~{if defined(mpMp) then ("-mp " +  '"' + mpMp + '"') else ""}
  >>>
}