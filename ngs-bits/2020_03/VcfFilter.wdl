version 1.0

task VcfFilter {
  input {
    File inIn
    File outOut
    String regReg
    String variantVariantType
    String idId
    Float qualQual
    String filterFilter
    Boolean filterFilterEmpty
    String infoInfo
    String sampleSample
    Boolean sampleSampleOneMatch
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    VcfFilter \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(regReg) then ("-reg " +  '"' + regReg + '"') else ""} \
      ~{if defined(variantVariantType) then ("-variant_type " +  '"' + variantVariantType + '"') else ""} \
      ~{if defined(idId) then ("-id " +  '"' + idId + '"') else ""} \
      ~{if defined(qualQual) then ("-qual " +  '"' + qualQual + '"') else ""} \
      ~{if defined(filterFilter) then ("-filter " +  '"' + filterFilter + '"') else ""} \
      ~{true="-filter_empty" false="" filterFilterEmpty} \
      ~{if defined(infoInfo) then ("-info " +  '"' + infoInfo + '"') else ""} \
      ~{if defined(sampleSample) then ("-sample " +  '"' + sampleSample + '"') else ""} \
      ~{true="-sample_one_match" false="" sampleSampleOneMatch} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}