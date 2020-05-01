version 1.0

task Statistic.pl {
  input {
    String nNGram
    File setSetFreqCombo
    File getGetFreqCombo
    String frequencyFrequency
    String rankRank
    String precisionPrecision
    String scoreScore
    Boolean extendedExtended
    Boolean formatFormat
    String? optionsOptions
    String? statisticStatisticLibrary
    String? destinationDestination
    String? sourceSource
  }
  command <<<
    statistic.pl \
      ~{optionsOptions} \
      ~{if defined(nNGram) then ("--ngram " +  '"' + nNGram + '"') else ""} \
      ~{if defined(setSetFreqCombo) then ("--set_freq_combo " +  '"' + setSetFreqCombo + '"') else ""} \
      ~{if defined(getGetFreqCombo) then ("--get_freq_combo " +  '"' + getGetFreqCombo + '"') else ""} \
      ~{if defined(frequencyFrequency) then ("--frequency " +  '"' + frequencyFrequency + '"') else ""} \
      ~{if defined(rankRank) then ("--rank " +  '"' + rankRank + '"') else ""} \
      ~{if defined(precisionPrecision) then ("--precision " +  '"' + precisionPrecision + '"') else ""} \
      ~{if defined(scoreScore) then ("--score " +  '"' + scoreScore + '"') else ""} \
      ~{true="--extended" false="" extendedExtended} \
      ~{true="--format" false="" formatFormat} \
      ~{statisticStatisticLibrary} \
      ~{destinationDestination} \
      ~{sourceSource}
  >>>
}