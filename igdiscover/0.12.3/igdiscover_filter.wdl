version 1.0

task IgdiscoverFilter {
  input {
    String vVCoverage
    String vVEvalue
    String jJCoverage
    File jsonJson
  }
  command <<<
    igdiscover filter \
      ~{if defined(vVCoverage) then ("--v-coverage " +  '"' + vVCoverage + '"') else ""} \
      ~{if defined(vVEvalue) then ("--v-evalue " +  '"' + vVEvalue + '"') else ""} \
      ~{if defined(jJCoverage) then ("--j-coverage " +  '"' + jJCoverage + '"') else ""} \
      ~{if defined(jsonJson) then ("--json " +  '"' + jsonJson + '"') else ""}
  >>>
}