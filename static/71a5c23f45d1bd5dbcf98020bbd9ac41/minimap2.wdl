version 1.0

task Minimap2.py {
  input {
    String xX
    Int nN
    Int mM
    Int kK
    Int wW
    Int rR
    Boolean cC
  }
  command <<<
    minimap2.py \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{true="-c" false="" cC}
  >>>
}