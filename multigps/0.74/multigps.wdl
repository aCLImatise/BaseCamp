version 1.0

task Multigps {
  input {
    Boolean threadsThreads
    Boolean verboseVerbose
    Boolean configConfig
    String geninfoGeninfo
    Boolean nonNonUnique
    Boolean mappMappAbility
    Boolean nocacheNocache
    Boolean noNoScaling
    Boolean medianMedianScale
    Boolean regressionRegressionScale
    Boolean sesSesScale
    Boolean fixedFixedScaling
    Boolean scaleScaleWin
    Boolean plotPlotScaling
    Boolean noNoPosPrior
    Boolean probProbShared
    Boolean noNoMotifs
    Boolean noNoMotifPrior
    Boolean memeMemePath
    Boolean meMeMenMotifs
    Boolean memeMemeMinW
    Boolean memeMemeMaxW
    Boolean memeMemeArgs
    Boolean meme1procMeme1proc
    Boolean qQ
    Boolean minMinFold
    Boolean noNoDiffTests
    Boolean rpathRpath
    Boolean edgeEdgeRod
    Boolean diffDiffP
    Boolean eventsEventsAreTxt
  }
  command <<<
    multigps \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--config" false="" configConfig} \
      ~{if defined(geninfoGeninfo) then ("--geninfo " +  '"' + geninfoGeninfo + '"') else ""} \
      ~{true="--nonunique" false="" nonNonUnique} \
      ~{true="--mappability" false="" mappMappAbility} \
      ~{true="--nocache" false="" nocacheNocache} \
      ~{true="--noscaling" false="" noNoScaling} \
      ~{true="--medianscale" false="" medianMedianScale} \
      ~{true="--regressionscale" false="" regressionRegressionScale} \
      ~{true="--sesscale" false="" sesSesScale} \
      ~{true="--fixedscaling" false="" fixedFixedScaling} \
      ~{true="--scalewin" false="" scaleScaleWin} \
      ~{true="--plotscaling" false="" plotPlotScaling} \
      ~{true="--noposprior" false="" noNoPosPrior} \
      ~{true="--probshared" false="" probProbShared} \
      ~{true="--nomotifs" false="" noNoMotifs} \
      ~{true="--nomotifprior" false="" noNoMotifPrior} \
      ~{true="--memepath" false="" memeMemePath} \
      ~{true="--memenmotifs" false="" meMeMenMotifs} \
      ~{true="--mememinw" false="" memeMemeMinW} \
      ~{true="--mememaxw" false="" memeMemeMaxW} \
      ~{true="--memeargs" false="" memeMemeArgs} \
      ~{true="--meme1proc" false="" meme1procMeme1proc} \
      ~{true="--q" false="" qQ} \
      ~{true="--minfold" false="" minMinFold} \
      ~{true="--nodifftests" false="" noNoDiffTests} \
      ~{true="--rpath" false="" rpathRpath} \
      ~{true="--edgerod" false="" edgeEdgeRod} \
      ~{true="--diffp" false="" diffDiffP} \
      ~{true="--eventsaretxt" false="" eventsEventsAreTxt}
  >>>
}