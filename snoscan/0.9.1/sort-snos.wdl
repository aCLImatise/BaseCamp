version 1.0

task SortSnos.pl {
  input {
    Boolean hH
    Boolean rR
    Boolean rR
    Boolean mM
    Boolean uU
    Int tT
    String sS
    String mM
    String eE
    Boolean fF
  }
  command <<<
    sort-snos.pl \
      ~{true="-H" false="" hH} \
      ~{true="-R" false="" rR} \
      ~{true="-r" false="" rR} \
      ~{true="-M" false="" mM} \
      ~{true="-U" false="" uU} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{true="-F" false="" fF}
  >>>
}