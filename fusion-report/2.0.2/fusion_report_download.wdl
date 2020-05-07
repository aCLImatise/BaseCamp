version 1.0

task FusionReportDownload {
  input {
    String cosmicCosmicUsr
    String cosmicCosmicPasswd
    String cosmicCosmicToken
    String? outputOutput
  }
  command <<<
    fusion_report download \
      ~{outputOutput} \
      ~{if defined(cosmicCosmicUsr) then ("--cosmic_usr " +  '"' + cosmicCosmicUsr + '"') else ""} \
      ~{if defined(cosmicCosmicPasswd) then ("--cosmic_passwd " +  '"' + cosmicCosmicPasswd + '"') else ""} \
      ~{if defined(cosmicCosmicToken) then ("--cosmic_token " +  '"' + cosmicCosmicToken + '"') else ""}
  >>>
}