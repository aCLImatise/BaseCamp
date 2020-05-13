version 1.0

task AnanseInfluence {
  input {
    File bBNetwork
    String nNCore
    File aANetwork
    File expressionExpression
    String edgesEdges
    File deDeGenes
    File outfileOutfile
    String plotPlot
  }
  command <<<
    ananse influence \
      ~{if defined(bBNetwork) then ("--bnetwork " +  '"' + bBNetwork + '"') else ""} \
      ~{if defined(nNCore) then ("--ncore " +  '"' + nNCore + '"') else ""} \
      ~{if defined(aANetwork) then ("--anetwork " +  '"' + aANetwork + '"') else ""} \
      ~{if defined(expressionExpression) then ("--expression " +  '"' + expressionExpression + '"') else ""} \
      ~{if defined(edgesEdges) then ("--edges " +  '"' + edgesEdges + '"') else ""} \
      ~{if defined(deDeGenes) then ("--degenes " +  '"' + deDeGenes + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(plotPlot) then ("--plot " +  '"' + plotPlot + '"') else ""}
  >>>
}