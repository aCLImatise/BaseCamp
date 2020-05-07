version 1.0

task FindKnots.py {
  input {
    Boolean infoInfo
    String kKSize
    String uniqueUniqueKmErs
    String fpFpRate
    Int maxMaxMemoryUsage
    Boolean smallSmallCount
    Boolean forceForce
    String? graphGraphBase
  }
  command <<<
    find-knots.py \
      ~{graphGraphBase} \
      ~{true="--info" false="" infoInfo} \
      ~{if defined(kKSize) then ("--ksize " +  '"' + kKSize + '"') else ""} \
      ~{if defined(uniqueUniqueKmErs) then ("--unique-kmers " +  '"' + uniqueUniqueKmErs + '"') else ""} \
      ~{if defined(fpFpRate) then ("--fp-rate " +  '"' + fpFpRate + '"') else ""} \
      ~{if defined(maxMaxMemoryUsage) then ("--max-memory-usage " +  '"' + maxMaxMemoryUsage + '"') else ""} \
      ~{true="--small-count" false="" smallSmallCount} \
      ~{true="--force" false="" forceForce}
  >>>
}