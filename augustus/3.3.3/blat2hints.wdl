version 1.0

task Blat2hints.pl {
  input {
    String priorityPriority
    String maxMaxGapLen
    String minMinIntronLen
    String maxMaxIntronLen
    String maxqMaxqGapLen
    String epEpCutOff
    String sourceSource
    Boolean intronsIntronsOnly
    Boolean noNoMult
    String removeRemoveRedundant
    String maxMaxCoverage
    Boolean ssSsOn
    Boolean trunksTrunksS
    String colColOffset
    String scoreScore
    String cloneCloneFile
    String terminusTerminusFile
    String maxMaxGeneLen
  }
  command <<<
    blat2hints.pl \
      ~{if defined(priorityPriority) then ("--priority " +  '"' + priorityPriority + '"') else ""} \
      ~{if defined(maxMaxGapLen) then ("--maxgaplen " +  '"' + maxMaxGapLen + '"') else ""} \
      ~{if defined(minMinIntronLen) then ("--minintronlen " +  '"' + minMinIntronLen + '"') else ""} \
      ~{if defined(maxMaxIntronLen) then ("--maxintronlen " +  '"' + maxMaxIntronLen + '"') else ""} \
      ~{if defined(maxqMaxqGapLen) then ("--maxQgaplen " +  '"' + maxqMaxqGapLen + '"') else ""} \
      ~{if defined(epEpCutOff) then ("--ep_cutoff " +  '"' + epEpCutOff + '"') else ""} \
      ~{if defined(sourceSource) then ("--source " +  '"' + sourceSource + '"') else ""} \
      ~{true="--intronsonly" false="" intronsIntronsOnly} \
      ~{true="--nomult" false="" noNoMult} \
      ~{if defined(removeRemoveRedundant) then ("--remove_redundant " +  '"' + removeRemoveRedundant + '"') else ""} \
      ~{if defined(maxMaxCoverage) then ("--maxcoverage " +  '"' + maxMaxCoverage + '"') else ""} \
      ~{true="--ssOn" false="" ssSsOn} \
      ~{true="--trunkSS" false="" trunksTrunksS} \
      ~{if defined(colColOffset) then ("--coloffset " +  '"' + colColOffset + '"') else ""} \
      ~{if defined(scoreScore) then ("--score " +  '"' + scoreScore + '"') else ""} \
      ~{if defined(cloneCloneFile) then ("--clonefile " +  '"' + cloneCloneFile + '"') else ""} \
      ~{if defined(terminusTerminusFile) then ("--terminusfile " +  '"' + terminusTerminusFile + '"') else ""} \
      ~{if defined(maxMaxGeneLen) then ("--maxgenelen " +  '"' + maxMaxGeneLen + '"') else ""}
  >>>
}