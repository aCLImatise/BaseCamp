version 1.0

task Vcf2ldNeighbor {
  input {
    Boolean peoplePeopleIncludeId
    Boolean peoplePeopleExcludeId
  }
  command <<<
    vcf2ld_neighbor \
      ~{true="--peopleIncludeID" false="" peoplePeopleIncludeId} \
      ~{true="--peopleExcludeID" false="" peoplePeopleExcludeId}
  >>>
}