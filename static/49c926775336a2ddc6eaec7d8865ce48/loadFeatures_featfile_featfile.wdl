version 1.0

task LoadFeaturesFeatfileFeatfile {
  input {
    String uU
    String iI
  }
  command <<<
    loadFeatures featfile featfile \
      ~{if defined(uU) then ("-u " +  '"' + uU + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""}
  >>>
}