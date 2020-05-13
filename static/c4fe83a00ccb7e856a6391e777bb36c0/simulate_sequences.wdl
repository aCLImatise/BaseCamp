version 1.0

task SimulateSequences.py {
  input {
    String nN
    Int mM
    String bB
    String zZ
    String? outputOutputFastA
  }
  command <<<
    simulate_sequences.py \
      ~{outputOutputFastA} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(zZ) then ("-z " +  '"' + zZ + '"') else ""}
  >>>
}