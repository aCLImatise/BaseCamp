version 1.0

task Peddy {
  input {
    Int procsProcs
    String prefixPrefix
    Int eachEach
    String sitesSites
    Boolean loglevelLoglevel
  }
  command <<<
    peddy \
      ~{if defined(procsProcs) then ("--procs " +  '"' + procsProcs + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(eachEach) then ("--each " +  '"' + eachEach + '"') else ""} \
      ~{if defined(sitesSites) then ("--sites " +  '"' + sitesSites + '"') else ""} \
      ~{true="--loglevel" false="" loglevelLoglevel}
  >>>
}