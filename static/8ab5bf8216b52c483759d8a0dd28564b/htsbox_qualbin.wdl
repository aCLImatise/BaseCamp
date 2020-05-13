version 1.0

task HtsboxQualbin {
  input {
    Int tT
    Int nN
    Int mM
    Boolean bB
    Boolean uU
  }
  command <<<
    htsbox qualbin \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{true="-b" false="" bB} \
      ~{true="-u" false="" uU}
  >>>
}