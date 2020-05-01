version 1.0

task VcfPair {
  input {
    Boolean peoplePeopleIncludeId
    Boolean peoplePeopleExcludeId
  }
  command <<<
    vcfPair \
      ~{true="--peopleIncludeID" false="" peoplePeopleIncludeId} \
      ~{true="--peopleExcludeID" false="" peoplePeopleExcludeId}
  >>>
}