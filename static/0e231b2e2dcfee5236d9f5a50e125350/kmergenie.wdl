version 1.0

task Kmergenie {
  input {
    Boolean diploidDiploid
    Boolean oneOnePass
    String kK
    String lL
    String sS
    String eE
    String tT
    String oO
    Boolean debugDebug
    String? readReadFile
  }
  command <<<
    kmergenie \
      ~{readReadFile} \
      ~{true="--diploid" false="" diploidDiploid} \
      ~{true="--one-pass" false="" oneOnePass} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}