version 1.0

task Bam2hints {
  input {
    String priorityPriority
    String maxMaxGapLen
    String minMinIntronLen
    String maxMaxIntronLen
    String minMinEndBlockLen
    String maxqMaxqGapLen
    Boolean exonExonHints
    String epEpCutOff
    String sourceSource
    Boolean intronsIntronsOnly
    Boolean noNoMult
    Boolean removeRemoveRedundant
    String maxMaxCoverage
    Boolean ssSsOn
    Boolean trunksTrunksS
    String scoreScore
    String maxMaxGeneLen
  }
  command <<<
    bam2hints \
      ~{if defined(priorityPriority) then ("--priority " +  '"' + priorityPriority + '"') else ""} \
      ~{if defined(maxMaxGapLen) then ("--maxgaplen " +  '"' + maxMaxGapLen + '"') else ""} \
      ~{if defined(minMinIntronLen) then ("--minintronlen " +  '"' + minMinIntronLen + '"') else ""} \
      ~{if defined(maxMaxIntronLen) then ("--maxintronlen " +  '"' + maxMaxIntronLen + '"') else ""} \
      ~{if defined(minMinEndBlockLen) then ("--MinEndBlockLen " +  '"' + minMinEndBlockLen + '"') else ""} \
      ~{if defined(maxqMaxqGapLen) then ("--maxQgaplen " +  '"' + maxqMaxqGapLen + '"') else ""} \
      ~{true="--exonhints" false="" exonExonHints} \
      ~{if defined(epEpCutOff) then ("--ep_cutoff " +  '"' + epEpCutOff + '"') else ""} \
      ~{if defined(sourceSource) then ("--source " +  '"' + sourceSource + '"') else ""} \
      ~{true="--intronsonly" false="" intronsIntronsOnly} \
      ~{true="--nomult" false="" noNoMult} \
      ~{true="--remove_redundant" false="" removeRemoveRedundant} \
      ~{if defined(maxMaxCoverage) then ("--maxcoverage " +  '"' + maxMaxCoverage + '"') else ""} \
      ~{true="--ssOn" false="" ssSsOn} \
      ~{true="--trunkSS" false="" trunksTrunksS} \
      ~{if defined(scoreScore) then ("--score " +  '"' + scoreScore + '"') else ""} \
      ~{if defined(maxMaxGeneLen) then ("--maxgenelen " +  '"' + maxMaxGeneLen + '"') else ""}
  >>>
}