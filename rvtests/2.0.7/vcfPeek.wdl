version 1.0

task VcfPeek {
  input {
    Boolean peoplePeopleIncludeId
    Boolean peoplePeopleExcludeId
  }
  command <<<
    vcfPeek \
      ~{true="--peopleIncludeID" false="" peoplePeopleIncludeId} \
      ~{true="--peopleExcludeID" false="" peoplePeopleExcludeId}
  >>>
}