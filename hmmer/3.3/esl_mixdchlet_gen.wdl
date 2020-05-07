version 1.0

task EslMixdchletGen {
  input {
    String sS
    String mM
    String nN
  }
  command <<<
    esl-mixdchlet gen \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(nN) then ("-N " +  '"' + nN + '"') else ""}
  >>>
}