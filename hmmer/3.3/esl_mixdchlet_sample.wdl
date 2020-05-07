version 1.0

task EslMixdchletSample {
  input {
    String sS
    String kK
    String qQ
  }
  command <<<
    esl-mixdchlet sample \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(kK) then ("-K " +  '"' + kK + '"') else ""} \
      ~{if defined(qQ) then ("-Q " +  '"' + qQ + '"') else ""}
  >>>
}