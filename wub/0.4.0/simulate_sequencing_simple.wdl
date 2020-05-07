version 1.0

task SimulateSequencingSimple.py {
  input {
    String nN
    String mM
    String aA
    String lL
    String uU
    String eE
    String wW
    String bB
    String qQ
    String sS
    Boolean qQ
    String zZ
    String? inputInputFastA
    String? outputOutputFastQ
  }
  command <<<
    simulate_sequencing_simple.py \
      ~{inputInputFastA} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(uU) then ("-u " +  '"' + uU + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-Q" false="" qQ} \
      ~{if defined(zZ) then ("-z " +  '"' + zZ + '"') else ""} \
      ~{outputOutputFastQ}
  >>>
}