version 1.0

task Vcf2plink {
  input {
    Boolean peoplePeopleIncludeId
    Boolean peoplePeopleExcludeId
    Boolean plinkPlinkChrom
    Boolean minhMinhWe
  }
  command <<<
    vcf2plink \
      ~{true="--peopleIncludeID" false="" peoplePeopleIncludeId} \
      ~{true="--peopleExcludeID" false="" peoplePeopleExcludeId} \
      ~{true="--plinkChrom" false="" plinkPlinkChrom} \
      ~{true="--minHWE" false="" minhMinhWe}
  >>>
}