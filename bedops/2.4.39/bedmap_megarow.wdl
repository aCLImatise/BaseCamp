version 1.0

task BedmapMegarow {
  input {
    String chromChrom
    String delimDelim
    Boolean ecEc
    Boolean fasterFaster
    Boolean headerHeader
    Boolean minMinMemory
    String multiMultiDelim
    Int precPrec
    Boolean sciSci
    Boolean skipSkipUnmapped
    Boolean sweepSweepAll
    String unmappedUnmappedVal
    Int bpBpOvr
    Boolean exactExact
    String fractionFractionBoth
    String fractionFractionEither
    String fractionFractionMap
    String fractionFractionRef
    Int rangeRange
    Boolean cvCv
    String kthKth
    Boolean madMad
    Boolean maxMax
    Boolean maxMaxElement
    Boolean maxMaxElementRand
    Boolean meanMean
    Boolean medianMedian
    Boolean minMin
    Boolean minMinElement
    Boolean minMinElementRand
    Boolean stdevStdev
    Boolean sumSum
    String tTMean
    Boolean varianceVariance
    Boolean wWMean
    Boolean basesBases
    Boolean basesBasesUniq
    Boolean basesBasesUniqF
    Boolean countCount
    Boolean echoEcho
    Boolean echoEchoMap
    Boolean echoEchoMapId
    Boolean echoEchoMapIdUniq
    Boolean echoEchoMapRange
    Boolean echoEchoMapScore
    Boolean echoEchoMapSize
    String echoEchoOverlapSize
    Boolean echoEchoRefName
    Boolean echoEchoRefRowId
    Boolean echoEchoRefSize
    Boolean indicatorIndicator
  }
  command <<<
    bedmap-megarow \
      ~{if defined(chromChrom) then ("--chrom " +  '"' + chromChrom + '"') else ""} \
      ~{if defined(delimDelim) then ("--delim " +  '"' + delimDelim + '"') else ""} \
      ~{true="--ec" false="" ecEc} \
      ~{true="--faster" false="" fasterFaster} \
      ~{true="--header" false="" headerHeader} \
      ~{true="--min-memory" false="" minMinMemory} \
      ~{if defined(multiMultiDelim) then ("--multidelim " +  '"' + multiMultiDelim + '"') else ""} \
      ~{if defined(precPrec) then ("--prec " +  '"' + precPrec + '"') else ""} \
      ~{true="--sci" false="" sciSci} \
      ~{true="--skip-unmapped" false="" skipSkipUnmapped} \
      ~{true="--sweep-all" false="" sweepSweepAll} \
      ~{if defined(unmappedUnmappedVal) then ("--unmapped-val " +  '"' + unmappedUnmappedVal + '"') else ""} \
      ~{if defined(bpBpOvr) then ("--bp-ovr " +  '"' + bpBpOvr + '"') else ""} \
      ~{true="--exact" false="" exactExact} \
      ~{if defined(fractionFractionBoth) then ("--fraction-both " +  '"' + fractionFractionBoth + '"') else ""} \
      ~{if defined(fractionFractionEither) then ("--fraction-either " +  '"' + fractionFractionEither + '"') else ""} \
      ~{if defined(fractionFractionMap) then ("--fraction-map " +  '"' + fractionFractionMap + '"') else ""} \
      ~{if defined(fractionFractionRef) then ("--fraction-ref " +  '"' + fractionFractionRef + '"') else ""} \
      ~{if defined(rangeRange) then ("--range " +  '"' + rangeRange + '"') else ""} \
      ~{true="--cv" false="" cvCv} \
      ~{if defined(kthKth) then ("--kth " +  '"' + kthKth + '"') else ""} \
      ~{true="--mad" false="" madMad} \
      ~{true="--max" false="" maxMax} \
      ~{true="--max-element" false="" maxMaxElement} \
      ~{true="--max-element-rand" false="" maxMaxElementRand} \
      ~{true="--mean" false="" meanMean} \
      ~{true="--median" false="" medianMedian} \
      ~{true="--min" false="" minMin} \
      ~{true="--min-element" false="" minMinElement} \
      ~{true="--min-element-rand" false="" minMinElementRand} \
      ~{true="--stdev" false="" stdevStdev} \
      ~{true="--sum" false="" sumSum} \
      ~{if defined(tTMean) then ("--tmean " +  '"' + tTMean + '"') else ""} \
      ~{true="--variance" false="" varianceVariance} \
      ~{true="--wmean" false="" wWMean} \
      ~{true="--bases" false="" basesBases} \
      ~{true="--bases-uniq" false="" basesBasesUniq} \
      ~{true="--bases-uniq-f" false="" basesBasesUniqF} \
      ~{true="--count" false="" countCount} \
      ~{true="--echo" false="" echoEcho} \
      ~{true="--echo-map" false="" echoEchoMap} \
      ~{true="--echo-map-id" false="" echoEchoMapId} \
      ~{true="--echo-map-id-uniq" false="" echoEchoMapIdUniq} \
      ~{true="--echo-map-range" false="" echoEchoMapRange} \
      ~{true="--echo-map-score" false="" echoEchoMapScore} \
      ~{true="--echo-map-size" false="" echoEchoMapSize} \
      ~{if defined(echoEchoOverlapSize) then ("--echo-overlap-size " +  '"' + echoEchoOverlapSize + '"') else ""} \
      ~{true="--echo-ref-name" false="" echoEchoRefName} \
      ~{true="--echo-ref-row-id" false="" echoEchoRefRowId} \
      ~{true="--echo-ref-size" false="" echoEchoRefSize} \
      ~{true="--indicator" false="" indicatorIndicator}
  >>>
}