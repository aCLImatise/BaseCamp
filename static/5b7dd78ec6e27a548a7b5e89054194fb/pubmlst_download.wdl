version 1.0

task PubmlstDownload {
  input {
    String schemeSchemeName
    String schemeSchemeId
    String outdirOutdir
  }
  command <<<
    pubmlst_download \
      ~{if defined(schemeSchemeName) then ("--scheme_name " +  '"' + schemeSchemeName + '"') else ""} \
      ~{if defined(schemeSchemeId) then ("--scheme_id " +  '"' + schemeSchemeId + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""}
  >>>
}