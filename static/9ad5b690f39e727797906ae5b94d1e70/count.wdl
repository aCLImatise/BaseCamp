version 1.0

task Count.pl {
  input {
    String nNGram
    String windowWindow
    File tokenToken
    File nonNonToken
    File setSetFreqCombo
    File getGetFreqCombo
    File stopStop
    String frequencyFrequency
    String uUFrequency
    String removeRemove
    String uURemove
    Boolean newNewLine
    Boolean tokenTokenList
    File histogramHistogram
    Boolean recurseRecurse
    Boolean extendedExtended
    Boolean verboseVerbose
  }
  command <<<
    count.pl \
      ~{if defined(nNGram) then ("--ngram " +  '"' + nNGram + '"') else ""} \
      ~{if defined(windowWindow) then ("--window " +  '"' + windowWindow + '"') else ""} \
      ~{if defined(tokenToken) then ("--token " +  '"' + tokenToken + '"') else ""} \
      ~{if defined(nonNonToken) then ("--nontoken " +  '"' + nonNonToken + '"') else ""} \
      ~{if defined(setSetFreqCombo) then ("--set_freq_combo " +  '"' + setSetFreqCombo + '"') else ""} \
      ~{if defined(getGetFreqCombo) then ("--get_freq_combo " +  '"' + getGetFreqCombo + '"') else ""} \
      ~{if defined(stopStop) then ("--stop " +  '"' + stopStop + '"') else ""} \
      ~{if defined(frequencyFrequency) then ("--frequency " +  '"' + frequencyFrequency + '"') else ""} \
      ~{if defined(uUFrequency) then ("--ufrequency " +  '"' + uUFrequency + '"') else ""} \
      ~{if defined(removeRemove) then ("--remove " +  '"' + removeRemove + '"') else ""} \
      ~{if defined(uURemove) then ("--uremove " +  '"' + uURemove + '"') else ""} \
      ~{true="--newLine" false="" newNewLine} \
      ~{true="--tokenlist" false="" tokenTokenList} \
      ~{if defined(histogramHistogram) then ("--histogram " +  '"' + histogramHistogram + '"') else ""} \
      ~{true="--recurse" false="" recurseRecurse} \
      ~{true="--extended" false="" extendedExtended} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}