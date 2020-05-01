version 1.0

task VcfAnnotateFromVcf {
  input {
    File configConfigFile
    File annotationAnnotationFile
    String infoInfoIds
    String idIdColumn
    String idIdPrefix
    Boolean allowAllowMissingHeader
    File inIn
    File outOut
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    VcfAnnotateFromVcf \
      ~{if defined(configConfigFile) then ("-config_file " +  '"' + configConfigFile + '"') else ""} \
      ~{if defined(annotationAnnotationFile) then ("-annotation_file " +  '"' + annotationAnnotationFile + '"') else ""} \
      ~{if defined(infoInfoIds) then ("-info_ids " +  '"' + infoInfoIds + '"') else ""} \
      ~{if defined(idIdColumn) then ("-id_column " +  '"' + idIdColumn + '"') else ""} \
      ~{if defined(idIdPrefix) then ("-id_prefix " +  '"' + idIdPrefix + '"') else ""} \
      ~{true="-allow_missing_header" false="" allowAllowMissingHeader} \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}