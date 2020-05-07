version 1.0

task Annotate.py {
  input {
    String aA
    String bB
    String upstreamUpstream
    String downstreamDownstream
    Boolean reportReportDistance
  }
  command <<<
    annotate.py \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(upstreamUpstream) then ("--upstream " +  '"' + upstreamUpstream + '"') else ""} \
      ~{if defined(downstreamDownstream) then ("--downstream " +  '"' + downstreamDownstream + '"') else ""} \
      ~{true="--report-distance" false="" reportReportDistance}
  >>>
}