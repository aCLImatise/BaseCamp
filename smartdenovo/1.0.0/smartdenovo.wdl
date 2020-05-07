version 1.0

task Smartdenovo.pl {
  input {
    String pP
    String eE
    Int tT
    Int kK
    Int jJ
    Int cC
    String? readReadSfa
  }
  command <<<
    smartdenovo.pl \
      ~{readReadSfa} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(jJ) then ("-J " +  '"' + jJ + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""}
  >>>
}