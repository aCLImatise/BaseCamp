version 1.0

task PslReps {
  input {
    Boolean noNoHead
    Boolean ignoreIgnoreSize
    Boolean noNoIntrons
    Boolean singleSingleHit
    Boolean minMinCover
    Boolean ignoreIgnoreNs
    Boolean minMinAli
    Boolean nearNearTop
    String minMinNearTopSize
    File coverCoverQSizes
    String? inInPsl
    String? outOutPsl
    String? outOutPsr
  }
  command <<<
    pslReps \
      ~{inInPsl} \
      ~{true="-nohead" false="" noNoHead} \
      ~{true="-ignoreSize" false="" ignoreIgnoreSize} \
      ~{true="-noIntrons" false="" noNoIntrons} \
      ~{true="-singleHit" false="" singleSingleHit} \
      ~{true="-minCover" false="" minMinCover} \
      ~{true="-ignoreNs" false="" ignoreIgnoreNs} \
      ~{true="-minAli" false="" minMinAli} \
      ~{true="-nearTop" false="" nearNearTop} \
      ~{if defined(minMinNearTopSize) then ("-minNearTopSize " +  '"' + minMinNearTopSize + '"') else ""} \
      ~{if defined(coverCoverQSizes) then ("-coverQSizes " +  '"' + coverCoverQSizes + '"') else ""} \
      ~{outOutPsl} \
      ~{outOutPsr}
  >>>
}