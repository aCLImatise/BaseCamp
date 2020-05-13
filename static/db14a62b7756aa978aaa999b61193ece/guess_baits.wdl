version 1.0

task GuessBaits.py {
  input {
    File outputOutput
    File coverageCoverage
    Boolean pP
    String targetsTargets
    String accessAccess
    String minMinDepth
    String minMinGap
    String minMinLength
    String? sampleSampleBams
  }
  command <<<
    guess_baits.py \
      ~{sampleSampleBams} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(coverageCoverage) then ("--coverage " +  '"' + coverageCoverage + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{if defined(targetsTargets) then ("--targets " +  '"' + targetsTargets + '"') else ""} \
      ~{if defined(accessAccess) then ("--access " +  '"' + accessAccess + '"') else ""} \
      ~{if defined(minMinDepth) then ("--min-depth " +  '"' + minMinDepth + '"') else ""} \
      ~{if defined(minMinGap) then ("--min-gap " +  '"' + minMinGap + '"') else ""} \
      ~{if defined(minMinLength) then ("--min-length " +  '"' + minMinLength + '"') else ""}
  >>>
}