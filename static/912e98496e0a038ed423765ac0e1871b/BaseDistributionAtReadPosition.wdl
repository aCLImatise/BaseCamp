version 1.0

task BaseDistributionAtReadPosition {
  input {
    String mM
    String vV
  }
  command <<<
    BaseDistributionAtReadPosition \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}