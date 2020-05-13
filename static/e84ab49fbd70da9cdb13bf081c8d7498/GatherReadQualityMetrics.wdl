version 1.0

task GatherReadQualityMetrics {
  input {
    String mM
    String vV
  }
  command <<<
    GatherReadQualityMetrics \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}