version 1.0

task SsuMask {
  input {
    Boolean aA
    Boolean dD
    String sS
    String kK
    String mM
    String tT
    Boolean iI
    String pfPf
    String ptPt
    Boolean rfRfOnly
    String gapGapThresh
    Boolean gapGapOnly
    Boolean afaAfa
    Boolean dnaDna
    String keyKeyOut
    String ps2pdfPs2pdf
    Boolean psPsOnly
    Boolean noNoDraw
    Boolean listList
    Boolean stk2afaStk2afa
    String seqSeqK
    String seqSeqR
  }
  command <<<
    ssu-mask \
      ~{true="-a" false="" aA} \
      ~{true="-d" false="" dD} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{if defined(pfPf) then ("--pf " +  '"' + pfPf + '"') else ""} \
      ~{if defined(ptPt) then ("--pt " +  '"' + ptPt + '"') else ""} \
      ~{true="--rfonly" false="" rfRfOnly} \
      ~{if defined(gapGapThresh) then ("--gapthresh " +  '"' + gapGapThresh + '"') else ""} \
      ~{true="--gaponly" false="" gapGapOnly} \
      ~{true="--afa" false="" afaAfa} \
      ~{true="--dna" false="" dnaDna} \
      ~{if defined(keyKeyOut) then ("--key-out " +  '"' + keyKeyOut + '"') else ""} \
      ~{if defined(ps2pdfPs2pdf) then ("--ps2pdf " +  '"' + ps2pdfPs2pdf + '"') else ""} \
      ~{true="--ps-only" false="" psPsOnly} \
      ~{true="--no-draw" false="" noNoDraw} \
      ~{true="--list" false="" listList} \
      ~{true="--stk2afa" false="" stk2afaStk2afa} \
      ~{if defined(seqSeqK) then ("--seq-k " +  '"' + seqSeqK + '"') else ""} \
      ~{if defined(seqSeqR) then ("--seq-r " +  '"' + seqSeqR + '"') else ""}
  >>>
}