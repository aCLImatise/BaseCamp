version 1.0

task PIPmiRCLASSIFIER {
  input {
    String mM
    Int xX
    String tT
    Boolean dD
  }
  command <<<
    PIPmiR CLASSIFIER \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(xX) then ("-X " +  '"' + xX + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{true="-d" false="" dD}
  >>>
}