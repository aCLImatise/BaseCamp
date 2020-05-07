version 1.0

task Seq2cov.pl {
  input {
    String nN
    String nN
    String bB
    String cC
    String sS
    String eE
    String sS
    String eE
    String gG
    String xX
    Boolean zZ
  }
  command <<<
    seq2cov.pl \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(nN) then ("-N " +  '"' + nN + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{true="-z" false="" zZ}
  >>>
}