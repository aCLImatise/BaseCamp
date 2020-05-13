version 1.0

task GmerCounter {
  input {
    String dbDb
    String dbbDbb
    File wW
    String maxMaxKmErs
    Boolean headerHeader
    Boolean totalTotal
    Boolean uniqueUnique
    Boolean kmKmErs
    String distributionDistribution
    Boolean dD
    String? argumentsArguments
    String? sequencesSequences
  }
  command <<<
    gmer_counter \
      ~{argumentsArguments} \
      ~{if defined(dbDb) then ("-db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(dbbDbb) then ("-dbb " +  '"' + dbbDbb + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(maxMaxKmErs) then ("--max_kmers " +  '"' + maxMaxKmErs + '"') else ""} \
      ~{true="--header" false="" headerHeader} \
      ~{true="--total" false="" totalTotal} \
      ~{true="--unique" false="" uniqueUnique} \
      ~{true="--kmers" false="" kmKmErs} \
      ~{if defined(distributionDistribution) then ("--distribution " +  '"' + distributionDistribution + '"') else ""} \
      ~{true="-D" false="" dD} \
      ~{sequencesSequences}
  >>>
}