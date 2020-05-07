version 1.0

task Vcf2geno {
  input {
    Boolean peoplePeopleIncludeId
    Boolean peoplePeopleExcludeId
  }
  command <<<
    vcf2geno \
      ~{true="--peopleIncludeID" false="" peoplePeopleIncludeId} \
      ~{true="--peopleExcludeID" false="" peoplePeopleExcludeId}
  >>>
}