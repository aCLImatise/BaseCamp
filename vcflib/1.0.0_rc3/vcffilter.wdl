version 1.0

task Vcffilter {
  input {
    Boolean infoInfoFilter
    String genotypeGenotypeFilter
    Boolean keepKeepInfo
    Boolean filterFilterSites
    Boolean tagTagPass
    Boolean tagTagFail
    Boolean appendAppendFilter
    Boolean alleleAlleleTag
    Boolean invertInvert
    Boolean orOr
    Boolean regionRegion
    Boolean fF
    Boolean gG
    Boolean fF
    String? vcfVcfFile
  }
  command <<<
    vcffilter \
      ~{vcfVcfFile} \
      ~{true="--info-filter" false="" infoInfoFilter} \
      ~{if defined(genotypeGenotypeFilter) then ("--genotype-filter " +  '"' + genotypeGenotypeFilter + '"') else ""} \
      ~{true="--keep-info" false="" keepKeepInfo} \
      ~{true="--filter-sites" false="" filterFilterSites} \
      ~{true="--tag-pass" false="" tagTagPass} \
      ~{true="--tag-fail" false="" tagTagFail} \
      ~{true="--append-filter" false="" appendAppendFilter} \
      ~{true="--allele-tag" false="" alleleAlleleTag} \
      ~{true="--invert" false="" invertInvert} \
      ~{true="--or" false="" orOr} \
      ~{true="--region" false="" regionRegion} \
      ~{true="-f" false="" fF} \
      ~{true="-g" false="" gG} \
      ~{true="-f" false="" fF}
  >>>
}