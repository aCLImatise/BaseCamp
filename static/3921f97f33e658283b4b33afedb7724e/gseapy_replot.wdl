version 1.0

task GseapyReplot {
  input {
    String inInDir
    Boolean oO
    Boolean fF
    String fsFs
    Int graphGraph
    Boolean noNoPlot
    Boolean verboseVerbose
    Float weightWeight
  }
  command <<<
    gseapy replot \
      ~{if defined(inInDir) then ("--indir " +  '"' + inInDir + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{true="-f" false="" fF} \
      ~{if defined(fsFs) then ("--fs " +  '"' + fsFs + '"') else ""} \
      ~{if defined(graphGraph) then ("--graph " +  '"' + graphGraph + '"') else ""} \
      ~{true="--no-plot" false="" noNoPlot} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(weightWeight) then ("--weight " +  '"' + weightWeight + '"') else ""}
  >>>
}