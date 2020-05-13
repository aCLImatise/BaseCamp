version 1.0

task AnnotateInteractions.pl {
  input {
    Boolean resRes
    Boolean hubHubCount
    Boolean skipSkipAnn
    Boolean noNoAnn
    Boolean washuWashu
    Boolean cpuCpu
    Boolean mindMindIst
    Boolean maxMaxDist
    Boolean pPValue
    Boolean zscoreZscore
    String filterFilter
    String filterFilter2
    String ctcfCtcf
    String pP
    String dD
    Boolean circoCircoS
    Int iI
    String connectConnect
    Boolean poutPout
    Boolean gGSize
    String posPos
    String bgpBgp
  }
  command <<<
    annotateInteractions.pl \
      ~{true="-res" false="" resRes} \
      ~{true="-hubCount" false="" hubHubCount} \
      ~{true="-skipann" false="" skipSkipAnn} \
      ~{true="-noann" false="" noNoAnn} \
      ~{true="-washu" false="" washuWashu} \
      ~{true="-cpu" false="" cpuCpu} \
      ~{true="-minDist" false="" mindMindIst} \
      ~{true="-maxDist" false="" maxMaxDist} \
      ~{true="-pvalue" false="" pPValue} \
      ~{true="-zscore" false="" zscoreZscore} \
      ~{if defined(filterFilter) then ("-filter " +  '"' + filterFilter + '"') else ""} \
      ~{if defined(filterFilter2) then ("-filter2 " +  '"' + filterFilter2 + '"') else ""} \
      ~{if defined(ctcfCtcf) then ("-ctcf " +  '"' + ctcfCtcf + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{true="-circos" false="" circoCircoS} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(connectConnect) then ("-connect " +  '"' + connectConnect + '"') else ""} \
      ~{true="-pout" false="" poutPout} \
      ~{true="-gsize" false="" gGSize} \
      ~{if defined(posPos) then ("-pos " +  '"' + posPos + '"') else ""} \
      ~{if defined(bgpBgp) then ("-bgp " +  '"' + bgpBgp + '"') else ""}
  >>>
}