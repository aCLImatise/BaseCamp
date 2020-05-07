version 1.0

task Barriers {
  input {
    Boolean detailedDetailedHelp
    Boolean fullFullHelp
    Boolean verboseVerbose
    Boolean quietQuiet
    String graphGraph
    String movesMoves
    Boolean connectedConnected
    Boolean bBSize
    Boolean sSSize
    Int maxMax
    String minhMinh
    Boolean saddleSaddle
    Boolean ratesRates
    String pathPath
    File mapMapStruc
  }
  command <<<
    barriers \
      ~{true="--detailed-help" false="" detailedDetailedHelp} \
      ~{true="--full-help" false="" fullFullHelp} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(graphGraph) then ("--graph " +  '"' + graphGraph + '"') else ""} \
      ~{if defined(movesMoves) then ("--moves " +  '"' + movesMoves + '"') else ""} \
      ~{true="--connected" false="" connectedConnected} \
      ~{true="--bsize" false="" bBSize} \
      ~{true="--ssize" false="" sSSize} \
      ~{if defined(maxMax) then ("--max " +  '"' + maxMax + '"') else ""} \
      ~{if defined(minhMinh) then ("--minh " +  '"' + minhMinh + '"') else ""} \
      ~{true="--saddle" false="" saddleSaddle} \
      ~{true="--rates" false="" ratesRates} \
      ~{if defined(pathPath) then ("--path " +  '"' + pathPath + '"') else ""} \
      ~{if defined(mapMapStruc) then ("--mapstruc " +  '"' + mapMapStruc + '"') else ""}
  >>>
}