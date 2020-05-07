version 1.0

task GoalignRename {
  input {
    String currentCurrent
    String desiredDesired
    Boolean cleanCleanNames
    String mapMapFile
    String outputOutput
    String regexpRegexp
    String replaceReplace
    Boolean revertRevert
    Boolean unalignedUnaligned
    String alignAlign
    Boolean autoAutoDetect
    Boolean clustalClustal
    Boolean ignoreIgnoreIdentical
    Boolean inputInputStrict
    Boolean nexusNexus
    Boolean noNoBlock
    Boolean oneOneLine
    Boolean outputOutputStrict
    Boolean phylipPhylip
    Int seedSeed
    Int threadsThreads
    String? flagsFlags
  }
  command <<<
    goalign rename \
      ~{flagsFlags} \
      ~{if defined(currentCurrent) then ("- Current " +  '"' + currentCurrent + '"') else ""} \
      ~{if defined(desiredDesired) then ("- Desired " +  '"' + desiredDesired + '"') else ""} \
      ~{true="--clean-names" false="" cleanCleanNames} \
      ~{if defined(mapMapFile) then ("--map-file " +  '"' + mapMapFile + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(regexpRegexp) then ("--regexp " +  '"' + regexpRegexp + '"') else ""} \
      ~{if defined(replaceReplace) then ("--replace " +  '"' + replaceReplace + '"') else ""} \
      ~{true="--revert" false="" revertRevert} \
      ~{true="--unaligned" false="" unalignedUnaligned} \
      ~{if defined(alignAlign) then ("--align " +  '"' + alignAlign + '"') else ""} \
      ~{true="--auto-detect" false="" autoAutoDetect} \
      ~{true="--clustal" false="" clustalClustal} \
      ~{true="--ignore-identical" false="" ignoreIgnoreIdentical} \
      ~{true="--input-strict" false="" inputInputStrict} \
      ~{true="--nexus" false="" nexusNexus} \
      ~{true="--no-block" false="" noNoBlock} \
      ~{true="--one-line" false="" oneOneLine} \
      ~{true="--output-strict" false="" outputOutputStrict} \
      ~{true="--phylip" false="" phylipPhylip} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}