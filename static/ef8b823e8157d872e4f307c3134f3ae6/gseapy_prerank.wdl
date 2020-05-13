version 1.0

task GseapyPrerank {
  input {
    String rnkRnk
    String gmtGmt
    String lL
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
    Boolean ascendingAscending
    Boolean sS
    String threadsThreads
  }
  command <<<
    gseapy prerank \
      ~{if defined(rnkRnk) then ("--rnk " +  '"' + rnkRnk + '"') else ""} \
      ~{if defined(gmtGmt) then ("--gmt " +  '"' + gmtGmt + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
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
      ~{true="--ascending" false="" ascendingAscending} \
      ~{true="-s" false="" sS} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}