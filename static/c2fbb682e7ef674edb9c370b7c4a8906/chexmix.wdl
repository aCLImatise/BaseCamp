version 1.0

task Chexmix {
  input {
    Boolean threadsThreads
    Boolean verboseVerbose
    Boolean configConfig
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
    File excludeExclude
    Boolean galaxyGalaxyHtml
    Boolean standardStandard
    Boolean lenientLenient
    Boolean lenientLenientPlus
    Boolean memeMemePath
    Boolean noNoMotifs
    Boolean noNoMotifPrior
    Boolean meMeMenMotifs
    Boolean memeMemeMinW
    Boolean memeMemeMaxW
    Boolean memeMemeArgs
    Boolean minMinRoc
    Boolean minMinModelUpdateRefs
    Boolean seqrSeqrMthRes
    Boolean motifMotifPccThRes
    Boolean noNoClustering
    Boolean prefPref
    Boolean numNumComps
    Boolean winWin
    Boolean klKlDivergenceThRes
    Boolean qQ
    Boolean minMinFold
  }
  command <<<
    chexmix \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--config" false="" configConfig} \
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
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{true="--galaxyhtml" false="" galaxyGalaxyHtml} \
      ~{true="--standard" false="" standardStandard} \
      ~{true="--lenient" false="" lenientLenient} \
      ~{true="--lenientplus" false="" lenientLenientPlus} \
      ~{true="--memepath" false="" memeMemePath} \
      ~{true="--nomotifs" false="" noNoMotifs} \
      ~{true="--nomotifprior" false="" noNoMotifPrior} \
      ~{true="--memenmotifs" false="" meMeMenMotifs} \
      ~{true="--mememinw" false="" memeMemeMinW} \
      ~{true="--mememaxw" false="" memeMemeMaxW} \
      ~{true="--memeargs" false="" memeMemeArgs} \
      ~{true="--minroc" false="" minMinRoc} \
      ~{true="--minmodelupdaterefs" false="" minMinModelUpdateRefs} \
      ~{true="--seqrmthres" false="" seqrSeqrMthRes} \
      ~{true="--motifpccthres" false="" motifMotifPccThRes} \
      ~{true="--noclustering" false="" noNoClustering} \
      ~{true="--pref" false="" prefPref} \
      ~{true="--numcomps" false="" numNumComps} \
      ~{true="--win" false="" winWin} \
      ~{true="--kldivergencethres" false="" klKlDivergenceThRes} \
      ~{true="--q" false="" qQ} \
      ~{true="--minfold" false="" minMinFold}
  >>>
}