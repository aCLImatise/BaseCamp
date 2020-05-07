version 1.0

task FindTandem {
  input {
    String fF
    String uU
    String lL
    String xX
    String mM
    String kK
  }
  command <<<
    find-tandem \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(uU) then ("-u " +  '"' + uU + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""}
  >>>
}