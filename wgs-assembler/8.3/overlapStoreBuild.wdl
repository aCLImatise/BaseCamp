version 1.0

task OverlapStoreBuild {
  input {
    String oO
    String gG
    String fF
    String mM
    String plcPlc
    Boolean obtObt
    Boolean dupDup
    String eE
    File lL
    String bigBig
  }
  command <<<
    overlapStoreBuild \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(fF) then ("-F " +  '"' + fF + '"') else ""} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(plcPlc) then ("-plc " +  '"' + plcPlc + '"') else ""} \
      ~{true="-obt" false="" obtObt} \
      ~{true="-dup" false="" dupDup} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{if defined(bigBig) then ("-big " +  '"' + bigBig + '"') else ""}
  >>>
}