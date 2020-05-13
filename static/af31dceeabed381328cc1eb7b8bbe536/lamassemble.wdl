version 1.0

task Lamassemble {
  input {
    String pP
    String wW
    String mM
    String zZ
  }
  command <<<
    lamassemble \
      ~{if defined(pP) then ("-P " +  '"' + pP + '"') else ""} \
      ~{if defined(wW) then ("-W " +  '"' + wW + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(zZ) then ("-z " +  '"' + zZ + '"') else ""}
  >>>
}