version 1.0

task Vcf2ldGene {
  input {
    Boolean inInVcf
    Boolean outOut
    Boolean peoplePeopleIncludeId
    Boolean peoplePeopleIncludeFile
    Boolean peoplePeopleExcludeId
    Boolean peoplePeopleExcludeFile
    Boolean rangeRangeList
    Boolean rangeRangeFile
    Boolean siteSiteFile
    Boolean geneGeneFile
    Boolean geneGene
  }
  command <<<
    vcf2ld_gene \
      ~{true="--inVcf" false="" inInVcf} \
      ~{true="--out" false="" outOut} \
      ~{true="--peopleIncludeID" false="" peoplePeopleIncludeId} \
      ~{true="--peopleIncludeFile" false="" peoplePeopleIncludeFile} \
      ~{true="--peopleExcludeID" false="" peoplePeopleExcludeId} \
      ~{true="--peopleExcludeFile" false="" peoplePeopleExcludeFile} \
      ~{true="--rangeList" false="" rangeRangeList} \
      ~{true="--rangeFile" false="" rangeRangeFile} \
      ~{true="--siteFile" false="" siteSiteFile} \
      ~{true="--geneFile" false="" geneGeneFile} \
      ~{true="--gene" false="" geneGene}
  >>>
}