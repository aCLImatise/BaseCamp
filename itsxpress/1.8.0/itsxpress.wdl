version 1.0

task Itsxpress {
  input {
    String taxTaxA
    String clusterClusterId
    Boolean reversedReversedPrimers
    String logLog
    String threadsThreads
  }
  command <<<
    itsxpress \
      ~{if defined(taxTaxA) then ("--taxa " +  '"' + taxTaxA + '"') else ""} \
      ~{if defined(clusterClusterId) then ("--cluster_id " +  '"' + clusterClusterId + '"') else ""} \
      ~{true="--reversed_primers" false="" reversedReversedPrimers} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}