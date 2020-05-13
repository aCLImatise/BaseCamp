version 1.0

task GseapySsgsea {
  input {
    String dataData
    String gmtGmt
    Boolean oO
    Boolean fF
    String fsFs
    Int graphGraph
    Boolean noNoPlot
    Boolean verboseVerbose
    String sampleSampleNorm
    Boolean noNoScale
    String perPerMuNum
    Int minMinSize
    Int maxMaxSize
    String weightWeight
    Boolean ascendingAscending
    Boolean sS
    String threadsThreads
  }
  command <<<
    gseapy ssgsea \
      ~{if defined(dataData) then ("--data " +  '"' + dataData + '"') else ""} \
      ~{if defined(gmtGmt) then ("--gmt " +  '"' + gmtGmt + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{true="-f" false="" fF} \
      ~{if defined(fsFs) then ("--fs " +  '"' + fsFs + '"') else ""} \
      ~{if defined(graphGraph) then ("--graph " +  '"' + graphGraph + '"') else ""} \
      ~{true="--no-plot" false="" noNoPlot} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(sampleSampleNorm) then ("--sample-norm " +  '"' + sampleSampleNorm + '"') else ""} \
      ~{true="--no-scale" false="" noNoScale} \
      ~{if defined(perPerMuNum) then ("--permu-num " +  '"' + perPerMuNum + '"') else ""} \
      ~{if defined(minMinSize) then ("--min-size " +  '"' + minMinSize + '"') else ""} \
      ~{if defined(maxMaxSize) then ("--max-size " +  '"' + maxMaxSize + '"') else ""} \
      ~{if defined(weightWeight) then ("--weight " +  '"' + weightWeight + '"') else ""} \
      ~{true="--ascending" false="" ascendingAscending} \
      ~{true="-s" false="" sS} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}