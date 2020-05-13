version 1.0

task Commet.py {
  input {
    Boolean sgeSge
    Boolean oneOneVsAll
    Boolean bB
    Boolean oO
    String kK
    String tT
    String lL
    String nN
    String eE
    String mM
    String? inputInputFile
  }
  command <<<
    Commet.py \
      ~{inputInputFile} \
      ~{true="--sge" false="" sgeSge} \
      ~{true="--one_vs_all" false="" oneOneVsAll} \
      ~{true="-b" false="" bB} \
      ~{true="-o" false="" oO} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""}
  >>>
}