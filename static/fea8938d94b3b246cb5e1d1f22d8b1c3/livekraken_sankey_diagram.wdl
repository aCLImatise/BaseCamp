version 1.0

task LivekrakenSankeyDiagram.py {
  input {
    String inInFile
    Boolean colorColor
    Boolean compressCompress
    String rankRank
    String topTop
    String outputOutput
    String namesNames
    String nodesNodes
  }
  command <<<
    livekraken_sankey_diagram.py \
      ~{if defined(inInFile) then ("--infile " +  '"' + inInFile + '"') else ""} \
      ~{true="--color" false="" colorColor} \
      ~{true="--compress" false="" compressCompress} \
      ~{if defined(rankRank) then ("--rank " +  '"' + rankRank + '"') else ""} \
      ~{if defined(topTop) then ("--top " +  '"' + topTop + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(namesNames) then ("--names " +  '"' + namesNames + '"') else ""} \
      ~{if defined(nodesNodes) then ("--nodes " +  '"' + nodesNodes + '"') else ""}
  >>>
}