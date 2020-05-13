version 1.0

task SimulateGenome.py {
  input {
    String nN
    String mM
    String aA
    String lL
    String uU
    String bB
    String zZ
    String? outputOutputFastA
  }
  command <<<
    simulate_genome.py \
      ~{outputOutputFastA} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(uU) then ("-u " +  '"' + uU + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(zZ) then ("-z " +  '"' + zZ + '"') else ""}
  >>>
}