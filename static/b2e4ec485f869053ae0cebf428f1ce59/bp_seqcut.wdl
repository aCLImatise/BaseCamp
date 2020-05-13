version 1.0

task BpSeqcut.pl {
  input {
    String hH
    String sS
    String eE
    String fF
    String wW
  }
  command <<<
    bp_seqcut.pl \
      ~{if defined(hH) then ("-h " +  '"' + hH + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""}
  >>>
}