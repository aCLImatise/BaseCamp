version 1.0

task PIPmiRTRAIN {
  input {
    String mM
    Int xX
  }
  command <<<
    PIPmiR TRAIN \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(xX) then ("-X " +  '"' + xX + '"') else ""}
  >>>
}