version 1.0

task GseapyGsea {
  input {
    String dataData
    String clsCls
    String gmtGmt
    String perPerMuType
    Boolean oO
    Boolean fF
    String fsFs
    Int graphGraph
    Boolean noNoPlot
    Boolean verboseVerbose
    String perPerMuNum
    Int minMinSize
    Int maxMaxSize
    Float weightWeight
    Boolean mM
    Boolean ascendingAscending
    Boolean sS
    String threadsThreads
  }
  command <<<
    gseapy gsea \
      ~{if defined(dataData) then ("--data " +  '"' + dataData + '"') else ""} \
      ~{if defined(clsCls) then ("--cls " +  '"' + clsCls + '"') else ""} \
      ~{if defined(gmtGmt) then ("--gmt " +  '"' + gmtGmt + '"') else ""} \
      ~{if defined(perPerMuType) then ("--permu-type " +  '"' + perPerMuType + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{true="-f" false="" fF} \
      ~{if defined(fsFs) then ("--fs " +  '"' + fsFs + '"') else ""} \
      ~{if defined(graphGraph) then ("--graph " +  '"' + graphGraph + '"') else ""} \
      ~{true="--no-plot" false="" noNoPlot} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(perPerMuNum) then ("--permu-num " +  '"' + perPerMuNum + '"') else ""} \
      ~{if defined(minMinSize) then ("--min-size " +  '"' + minMinSize + '"') else ""} \
      ~{if defined(maxMaxSize) then ("--max-size " +  '"' + maxMaxSize + '"') else ""} \
      ~{if defined(weightWeight) then ("--weight " +  '"' + weightWeight + '"') else ""} \
      ~{true="-m" false="" mM} \
      ~{true="--ascending" false="" ascendingAscending} \
      ~{true="-s" false="" sS} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}