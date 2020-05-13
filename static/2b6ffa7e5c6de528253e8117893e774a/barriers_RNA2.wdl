version 1.0

task BarriersRNA2 {
  input {
    Boolean fullFullHelp
    Boolean quietQuiet
    Boolean verboseVerbose
    String graphGraph
    String movesMoves
    Boolean bBSize
    Boolean sSSize
    Int maxMax
    String minhMinh
    Boolean saddleSaddle
    Boolean ratesRates
    Int posetPoset
    String pathPath
    Boolean sbSbMap
    Boolean transTrans
    String? pP
    String? cC
    String? nniNni
    String? pP
    String? tT
    String? cC
    String? rR
    String? xX
  }
  command <<<
    barriers-RNA2 \
      ~{pP} \
      ~{nniNni} \
      ~{true="--full-help" false="" fullFullHelp} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(graphGraph) then ("--graph " +  '"' + graphGraph + '"') else ""} \
      ~{if defined(movesMoves) then ("--moves " +  '"' + movesMoves + '"') else ""} \
      ~{true="--bsize" false="" bBSize} \
      ~{true="--ssize" false="" sSSize} \
      ~{if defined(maxMax) then ("--max " +  '"' + maxMax + '"') else ""} \
      ~{if defined(minhMinh) then ("--minh " +  '"' + minhMinh + '"') else ""} \
      ~{true="--saddle" false="" saddleSaddle} \
      ~{true="--rates" false="" ratesRates} \
      ~{if defined(posetPoset) then ("--poset " +  '"' + posetPoset + '"') else ""} \
      ~{if defined(pathPath) then ("--path " +  '"' + pathPath + '"') else ""} \
      ~{true="--sbmap" false="" sbSbMap} \
      ~{true="--trans" false="" transTrans} \
      ~{cC} \
      ~{pP} \
      ~{tT} \
      ~{cC} \
      ~{rR} \
      ~{xX}
  >>>
}