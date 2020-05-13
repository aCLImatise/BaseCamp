version 1.0

task Bgen2vcf {
  input {
    Boolean inInBgEn
    Boolean inInBgEnSample
    Boolean outOut
    Boolean peoplePeopleIncludeId
    Boolean peoplePeopleIncludeFile
    Boolean peoplePeopleExcludeId
    Boolean peoplePeopleExcludeFile
    Boolean rangeRangeList
    Boolean rangeRangeFile
    Boolean siteSiteFile
    Boolean hideHideVarid
    Boolean hideHideGt
    Boolean showShowDs
  }
  command <<<
    bgen2vcf \
      ~{true="--inBgen" false="" inInBgEn} \
      ~{true="--inBgenSample" false="" inInBgEnSample} \
      ~{true="--out" false="" outOut} \
      ~{true="--peopleIncludeID" false="" peoplePeopleIncludeId} \
      ~{true="--peopleIncludeFile" false="" peoplePeopleIncludeFile} \
      ~{true="--peopleExcludeID" false="" peoplePeopleExcludeId} \
      ~{true="--peopleExcludeFile" false="" peoplePeopleExcludeFile} \
      ~{true="--rangeList" false="" rangeRangeList} \
      ~{true="--rangeFile" false="" rangeRangeFile} \
      ~{true="--siteFile" false="" siteSiteFile} \
      ~{true="--hideVarId" false="" hideHideVarid} \
      ~{true="--hideGT" false="" hideHideGt} \
      ~{true="--showDS" false="" showShowDs}
  >>>
}