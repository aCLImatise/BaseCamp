version 1.0

task Pbalign {
  input {
    String logLogFile
    String logLogLevel
    Boolean debugDebug
    Boolean quietQuiet
    Boolean verboseVerbose
    Boolean pdbPdb
    Boolean profileProfile
    String regionRegionTable
    String configConfigFile
    String pulsePulseFile
    String algorithmAlgorithm
    Int maxMaxHits
    Int minMinAnchorSize
    Int maxMaxMatch
    String useUseCcs
    Boolean noNoSplitSubReads
    Boolean concordantConcordant
    String nprocNproc
    String algorithmAlgorithmOptions
    Int maxMaxDivergence
    Int minMinAccuracy
    Int minlengthMinlength
    String scoreScoreCutOff
    String hitHitPolicy
    Boolean filterFilterAdapterOnly
    String unalignedUnaligned
    String seedSeed
    String tmpdirTmpdir
    String? inputInputFileName
    String? referenceReferencePath
    String? outputOutputFileName
  }
  command <<<
    pbalign \
      ~{inputInputFileName} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--pdb" false="" pdbPdb} \
      ~{true="--profile" false="" profileProfile} \
      ~{if defined(regionRegionTable) then ("--regionTable " +  '"' + regionRegionTable + '"') else ""} \
      ~{if defined(configConfigFile) then ("--configFile " +  '"' + configConfigFile + '"') else ""} \
      ~{if defined(pulsePulseFile) then ("--pulseFile " +  '"' + pulsePulseFile + '"') else ""} \
      ~{if defined(algorithmAlgorithm) then ("--algorithm " +  '"' + algorithmAlgorithm + '"') else ""} \
      ~{if defined(maxMaxHits) then ("--maxHits " +  '"' + maxMaxHits + '"') else ""} \
      ~{if defined(minMinAnchorSize) then ("--minAnchorSize " +  '"' + minMinAnchorSize + '"') else ""} \
      ~{if defined(maxMaxMatch) then ("--maxMatch " +  '"' + maxMaxMatch + '"') else ""} \
      ~{if defined(useUseCcs) then ("--useccs " +  '"' + useUseCcs + '"') else ""} \
      ~{true="--noSplitSubreads" false="" noNoSplitSubReads} \
      ~{true="--concordant" false="" concordantConcordant} \
      ~{if defined(nprocNproc) then ("--nproc " +  '"' + nprocNproc + '"') else ""} \
      ~{if defined(algorithmAlgorithmOptions) then ("--algorithmOptions " +  '"' + algorithmAlgorithmOptions + '"') else ""} \
      ~{if defined(maxMaxDivergence) then ("--maxDivergence " +  '"' + maxMaxDivergence + '"') else ""} \
      ~{if defined(minMinAccuracy) then ("--minAccuracy " +  '"' + minMinAccuracy + '"') else ""} \
      ~{if defined(minlengthMinlength) then ("--minLength " +  '"' + minlengthMinlength + '"') else ""} \
      ~{if defined(scoreScoreCutOff) then ("--scoreCutoff " +  '"' + scoreScoreCutOff + '"') else ""} \
      ~{if defined(hitHitPolicy) then ("--hitPolicy " +  '"' + hitHitPolicy + '"') else ""} \
      ~{true="--filterAdapterOnly" false="" filterFilterAdapterOnly} \
      ~{if defined(unalignedUnaligned) then ("--unaligned " +  '"' + unalignedUnaligned + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(tmpdirTmpdir) then ("--tmpDir " +  '"' + tmpdirTmpdir + '"') else ""} \
      ~{referenceReferencePath} \
      ~{outputOutputFileName}
  >>>
}