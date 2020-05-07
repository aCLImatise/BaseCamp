version 1.0

task LoadFeaturesFeatfileBankname {
  input {
    String uU
    String iI
  }
  command <<<
    loadFeatures featfile bankname \
      ~{if defined(uU) then ("-u " +  '"' + uU + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""}
  >>>
}