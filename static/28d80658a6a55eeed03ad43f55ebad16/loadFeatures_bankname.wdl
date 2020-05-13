version 1.0

task LoadFeaturesBankname {
  input {
    String uU
    String iI
  }
  command <<<
    loadFeatures bankname \
      ~{if defined(uU) then ("-u " +  '"' + uU + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""}
  >>>
}