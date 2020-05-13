version 1.0

task RtgHelpVcfannotate {
  input {
    File bedBedRegions
    File inputInput
    File outputOutput
    String regionRegion
    String annotationAnnotation
    File bedBedIds
    File bedBedInfo
    Boolean fillFillAnAc
    String infoInfoDescription
    String infoInfoId
    File relabelRelabel
    File vcfVcfIds
    String addAddHeader
    Boolean noNoGzip
    Boolean noNoHeader
  }
  command <<<
    rtg help vcfannotate \
      ~{if defined(bedBedRegions) then ("--bed-regions " +  '"' + bedBedRegions + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(regionRegion) then ("--region " +  '"' + regionRegion + '"') else ""} \
      ~{if defined(annotationAnnotation) then ("--annotation " +  '"' + annotationAnnotation + '"') else ""} \
      ~{if defined(bedBedIds) then ("--bed-ids " +  '"' + bedBedIds + '"') else ""} \
      ~{if defined(bedBedInfo) then ("--bed-info " +  '"' + bedBedInfo + '"') else ""} \
      ~{true="--fill-an-ac" false="" fillFillAnAc} \
      ~{if defined(infoInfoDescription) then ("--info-description " +  '"' + infoInfoDescription + '"') else ""} \
      ~{if defined(infoInfoId) then ("--info-id " +  '"' + infoInfoId + '"') else ""} \
      ~{if defined(relabelRelabel) then ("--relabel " +  '"' + relabelRelabel + '"') else ""} \
      ~{if defined(vcfVcfIds) then ("--vcf-ids " +  '"' + vcfVcfIds + '"') else ""} \
      ~{if defined(addAddHeader) then ("--add-header " +  '"' + addAddHeader + '"') else ""} \
      ~{true="--no-gzip" false="" noNoGzip} \
      ~{true="--no-header" false="" noNoHeader}
  >>>
}