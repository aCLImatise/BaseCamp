version 1.0

task MakeInitialStoptags.py {
  input {
    Boolean infoInfo
    String kKSize
    String uniqueUniqueKmErs
    String fpFpRate
    Int maxMaxMemoryUsage
    Boolean smallSmallCount
    String subsetSubsetSize
    File stopStopTags
    Boolean forceForce
    String? graphGraphBase
  }
  command <<<
    make-initial-stoptags.py \
      ~{graphGraphBase} \
      ~{true="--info" false="" infoInfo} \
      ~{if defined(kKSize) then ("--ksize " +  '"' + kKSize + '"') else ""} \
      ~{if defined(uniqueUniqueKmErs) then ("--unique-kmers " +  '"' + uniqueUniqueKmErs + '"') else ""} \
      ~{if defined(fpFpRate) then ("--fp-rate " +  '"' + fpFpRate + '"') else ""} \
      ~{if defined(maxMaxMemoryUsage) then ("--max-memory-usage " +  '"' + maxMaxMemoryUsage + '"') else ""} \
      ~{true="--small-count" false="" smallSmallCount} \
      ~{if defined(subsetSubsetSize) then ("--subset-size " +  '"' + subsetSubsetSize + '"') else ""} \
      ~{if defined(stopStopTags) then ("--stoptags " +  '"' + stopStopTags + '"') else ""} \
      ~{true="--force" false="" forceForce}
  >>>
}