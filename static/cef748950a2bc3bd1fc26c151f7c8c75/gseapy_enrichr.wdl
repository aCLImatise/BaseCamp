version 1.0

task GseapyEnrichr {
  input {
    String inputInputList
    String geneGeneSets
    String organismOrganism
    String descriptionDescription
    Float cutCutOff
    String backgroundBackground
    Int topTopTerm
    Boolean oO
    Boolean fF
    String fsFs
    Int graphGraph
    Boolean noNoPlot
    Boolean verboseVerbose
  }
  command <<<
    gseapy enrichr \
      ~{if defined(inputInputList) then ("--input-list " +  '"' + inputInputList + '"') else ""} \
      ~{if defined(geneGeneSets) then ("--gene-sets " +  '"' + geneGeneSets + '"') else ""} \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(descriptionDescription) then ("--description " +  '"' + descriptionDescription + '"') else ""} \
      ~{if defined(cutCutOff) then ("--cut-off " +  '"' + cutCutOff + '"') else ""} \
      ~{if defined(backgroundBackground) then ("--background " +  '"' + backgroundBackground + '"') else ""} \
      ~{if defined(topTopTerm) then ("--top-term " +  '"' + topTopTerm + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{true="-f" false="" fF} \
      ~{if defined(fsFs) then ("--fs " +  '"' + fsFs + '"') else ""} \
      ~{if defined(graphGraph) then ("--graph " +  '"' + graphGraph + '"') else ""} \
      ~{true="--no-plot" false="" noNoPlot} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}