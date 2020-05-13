version 1.0

task BamtoolsResolve {
  input {
    String inIn
    String outOut
    String statsStats
    Boolean forceForceCompression
    Boolean makeMakeStats
    Boolean markMarkPairs
    Boolean twoTwoPass
    String minMinMq
    String ciCi
    String umtUmt
    Boolean forceForce
  }
  command <<<
    bamtools resolve \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(statsStats) then ("-stats " +  '"' + statsStats + '"') else ""} \
      ~{true="-forceCompression" false="" forceForceCompression} \
      ~{true="-makeStats" false="" makeMakeStats} \
      ~{true="-markPairs" false="" markMarkPairs} \
      ~{true="-twoPass" false="" twoTwoPass} \
      ~{if defined(minMinMq) then ("-minMQ " +  '"' + minMinMq + '"') else ""} \
      ~{if defined(ciCi) then ("-ci " +  '"' + ciCi + '"') else ""} \
      ~{if defined(umtUmt) then ("-umt " +  '"' + umtUmt + '"') else ""} \
      ~{true="-force" false="" forceForce}
  >>>
}