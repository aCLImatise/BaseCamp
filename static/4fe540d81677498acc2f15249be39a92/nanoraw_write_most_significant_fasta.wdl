version 1.0

task NanorawWriteMostSignificantFasta {
  input {
    Array[String]+ fast5Fast5BasedIrs
    Array[String]+ fast5Fast5BasedIrs2
    String correctedCorrectedGroup
    Array[String]+ obsObsPerBaseFilter
    String testTestType
    String fishersFishersMethodOffset
    Int minimumMinimumTestReads
    String genomeGenomeFastA
    String sequencesSequencesFilename
    String statisticsStatisticsFilename
    String numNumRegions
    String qQValueThreshold
    String numNumBases
    Boolean quietQuiet
  }
  command <<<
    nanoraw write_most_significant_fasta \
      ~{if defined(fast5Fast5BasedIrs) then ("--fast5-basedirs " +  '"' + fast5Fast5BasedIrs + '"') else ""} \
      ~{if defined(fast5Fast5BasedIrs2) then ("--fast5-basedirs2 " +  '"' + fast5Fast5BasedIrs2 + '"') else ""} \
      ~{if defined(correctedCorrectedGroup) then ("--corrected-group " +  '"' + correctedCorrectedGroup + '"') else ""} \
      ~{if defined(obsObsPerBaseFilter) then ("--obs-per-base-filter " +  '"' + obsObsPerBaseFilter + '"') else ""} \
      ~{if defined(testTestType) then ("--test-type " +  '"' + testTestType + '"') else ""} \
      ~{if defined(fishersFishersMethodOffset) then ("--fishers-method-offset " +  '"' + fishersFishersMethodOffset + '"') else ""} \
      ~{if defined(minimumMinimumTestReads) then ("--minimum-test-reads " +  '"' + minimumMinimumTestReads + '"') else ""} \
      ~{if defined(genomeGenomeFastA) then ("--genome-fasta " +  '"' + genomeGenomeFastA + '"') else ""} \
      ~{if defined(sequencesSequencesFilename) then ("--sequences-filename " +  '"' + sequencesSequencesFilename + '"') else ""} \
      ~{if defined(statisticsStatisticsFilename) then ("--statistics-filename " +  '"' + statisticsStatisticsFilename + '"') else ""} \
      ~{if defined(numNumRegions) then ("--num-regions " +  '"' + numNumRegions + '"') else ""} \
      ~{if defined(qQValueThreshold) then ("--q-value-threshold " +  '"' + qQValueThreshold + '"') else ""} \
      ~{if defined(numNumBases) then ("--num-bases " +  '"' + numNumBases + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}