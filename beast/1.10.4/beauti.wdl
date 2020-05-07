version 1.0

task Beauti {
  input {
    String advancedAdvanced
    String versionVersion
  }
  command <<<
    beauti \
      ~{if defined(advancedAdvanced) then ("-advanced " +  '"' + advancedAdvanced + '"') else ""} \
      ~{if defined(versionVersion) then ("-version " +  '"' + versionVersion + '"') else ""}
  >>>
}