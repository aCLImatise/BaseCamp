version 1.0

task EstimateMerThreshold {
  input {
    String mM
  }
  command <<<
    estimate-mer-threshold \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""}
  >>>
}