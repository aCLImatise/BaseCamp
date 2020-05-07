version 1.0

task MakeTagDirectory {
  input {
    Boolean forceForce5th
    Boolean uniqueUnique
    Boolean keepKeepOne
    Boolean keepKeepAll
    Boolean misMis
    Boolean sspeSspe
    Boolean readRead1
    Boolean minMinCounts
    Boolean mcMcContext
    String filterFilterReads
  }
  command <<<
    makeTagDirectory \
      ~{true="-force5th" false="" forceForce5th} \
      ~{true="-unique" false="" uniqueUnique} \
      ~{true="-keepOne" false="" keepKeepOne} \
      ~{true="-keepAll" false="" keepKeepAll} \
      ~{true="-mis" false="" misMis} \
      ~{true="-sspe" false="" sspeSspe} \
      ~{true="-read1" false="" readRead1} \
      ~{true="-minCounts" false="" minMinCounts} \
      ~{true="-mCcontext" false="" mcMcContext} \
      ~{if defined(filterFilterReads) then ("-filterReads " +  '"' + filterFilterReads + '"') else ""}
  >>>
}