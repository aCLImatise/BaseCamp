version 1.0

task NanorawGenomeResquiggle {
  input {
    String graphGraphMapExecutable
    String bwaBwaMemExecutable
    String timeoutTimeout
    String cptsCptsLimit
    String normalizationNormalizationType
    String porePoreModelFilename
    String outlierOutlierThreshold
    String fast5Fast5Pattern
    Boolean recursiveRecursive
    Boolean overwriteOverwrite
    String failedFailedReadsFilename
    String correctedCorrectedGroup
    String baseBaseCallGroup
    String processesProcesses
    String alignAlignProcesses
    String alignAlignThreadsPerProcess
    String reReSquiggleProcesses
    String alignmentAlignmentBatchSize
    Boolean skipSkipEventStdev
    Boolean quietQuiet
    String? fast5Fast5Basedir
    String? genomeGenomeFastA
  }
  command <<<
    nanoraw genome_resquiggle \
      ~{fast5Fast5Basedir} \
      ~{if defined(graphGraphMapExecutable) then ("--graphmap-executable " +  '"' + graphGraphMapExecutable + '"') else ""} \
      ~{if defined(bwaBwaMemExecutable) then ("--bwa-mem-executable " +  '"' + bwaBwaMemExecutable + '"') else ""} \
      ~{if defined(timeoutTimeout) then ("--timeout " +  '"' + timeoutTimeout + '"') else ""} \
      ~{if defined(cptsCptsLimit) then ("--cpts-limit " +  '"' + cptsCptsLimit + '"') else ""} \
      ~{if defined(normalizationNormalizationType) then ("--normalization-type " +  '"' + normalizationNormalizationType + '"') else ""} \
      ~{if defined(porePoreModelFilename) then ("--pore-model-filename " +  '"' + porePoreModelFilename + '"') else ""} \
      ~{if defined(outlierOutlierThreshold) then ("--outlier-threshold " +  '"' + outlierOutlierThreshold + '"') else ""} \
      ~{if defined(fast5Fast5Pattern) then ("--fast5-pattern " +  '"' + fast5Fast5Pattern + '"') else ""} \
      ~{true="--recursive" false="" recursiveRecursive} \
      ~{true="--overwrite" false="" overwriteOverwrite} \
      ~{if defined(failedFailedReadsFilename) then ("--failed-reads-filename " +  '"' + failedFailedReadsFilename + '"') else ""} \
      ~{if defined(correctedCorrectedGroup) then ("--corrected-group " +  '"' + correctedCorrectedGroup + '"') else ""} \
      ~{if defined(baseBaseCallGroup) then ("--basecall-group " +  '"' + baseBaseCallGroup + '"') else ""} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""} \
      ~{if defined(alignAlignProcesses) then ("--align-processes " +  '"' + alignAlignProcesses + '"') else ""} \
      ~{if defined(alignAlignThreadsPerProcess) then ("--align-threads-per-process " +  '"' + alignAlignThreadsPerProcess + '"') else ""} \
      ~{if defined(reReSquiggleProcesses) then ("--resquiggle-processes " +  '"' + reReSquiggleProcesses + '"') else ""} \
      ~{if defined(alignmentAlignmentBatchSize) then ("--alignment-batch-size " +  '"' + alignmentAlignmentBatchSize + '"') else ""} \
      ~{true="--skip-event-stdev" false="" skipSkipEventStdev} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{genomeGenomeFastA}
  >>>
}