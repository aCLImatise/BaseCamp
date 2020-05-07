version 1.0

task CdbgOps {
  input {
    String graphGraph
    String nodesNodes
    String edgesEdges
    String sourceSource
    String sourceSourceList
    String targetTarget
    Boolean allAll
    String unitUnitIgs
    String lengthLength
    Boolean repeatsRepeats
    String modeMode
  }
  command <<<
    cdbg-ops \
      ~{if defined(graphGraph) then ("--graph " +  '"' + graphGraph + '"') else ""} \
      ~{if defined(nodesNodes) then ("--nodes " +  '"' + nodesNodes + '"') else ""} \
      ~{if defined(edgesEdges) then ("--edges " +  '"' + edgesEdges + '"') else ""} \
      ~{if defined(sourceSource) then ("--source " +  '"' + sourceSource + '"') else ""} \
      ~{if defined(sourceSourceList) then ("--source-list " +  '"' + sourceSourceList + '"') else ""} \
      ~{if defined(targetTarget) then ("--target " +  '"' + targetTarget + '"') else ""} \
      ~{true="--all" false="" allAll} \
      ~{if defined(unitUnitIgs) then ("--unitigs " +  '"' + unitUnitIgs + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{true="--repeats" false="" repeatsRepeats} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""}
  >>>
}