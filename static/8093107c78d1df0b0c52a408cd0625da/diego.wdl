version 1.0

task Diego.py {
  input {
    String tableTable
    String listList
    String baseBaseCondition
    String minMinSupp
    String minMinSamples
    String significanceSignificanceThreshold
    String foldFoldChangeThreshold
    Boolean clusterCluster
    String denDenDoGram
    Boolean randomRandom
  }
  command <<<
    diego.py \
      ~{if defined(tableTable) then ("--table " +  '"' + tableTable + '"') else ""} \
      ~{if defined(listList) then ("--list " +  '"' + listList + '"') else ""} \
      ~{if defined(baseBaseCondition) then ("--base_condition " +  '"' + baseBaseCondition + '"') else ""} \
      ~{if defined(minMinSupp) then ("--minsupp " +  '"' + minMinSupp + '"') else ""} \
      ~{if defined(minMinSamples) then ("--minsamples " +  '"' + minMinSamples + '"') else ""} \
      ~{if defined(significanceSignificanceThreshold) then ("--significanceThreshold " +  '"' + significanceSignificanceThreshold + '"') else ""} \
      ~{if defined(foldFoldChangeThreshold) then ("--foldchangeThreshold " +  '"' + foldFoldChangeThreshold + '"') else ""} \
      ~{true="--cluster" false="" clusterCluster} \
      ~{if defined(denDenDoGram) then ("--dendogram " +  '"' + denDenDoGram + '"') else ""} \
      ~{true="--random" false="" randomRandom}
  >>>
}