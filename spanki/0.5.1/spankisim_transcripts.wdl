version 1.0

task SpankisimTranscripts {
  input {
    String oO
    String gG
    String fF
    String covCov
    String rpkRpk
    String tT
    String bpBp
    String endsEnds
    String sS
    String mM
    String mMDir
    String irIr
    String fragFrag
    String fragFragFixed
  }
  command <<<
    spankisim_transcripts \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(covCov) then ("-cov " +  '"' + covCov + '"') else ""} \
      ~{if defined(rpkRpk) then ("-rpk " +  '"' + rpkRpk + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(bpBp) then ("-bp " +  '"' + bpBp + '"') else ""} \
      ~{if defined(endsEnds) then ("-ends " +  '"' + endsEnds + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(mMDir) then ("-mdir " +  '"' + mMDir + '"') else ""} \
      ~{if defined(irIr) then ("-ir " +  '"' + irIr + '"') else ""} \
      ~{if defined(fragFrag) then ("-frag " +  '"' + fragFrag + '"') else ""} \
      ~{if defined(fragFragFixed) then ("-fragfixed " +  '"' + fragFragFixed + '"') else ""}
  >>>
}