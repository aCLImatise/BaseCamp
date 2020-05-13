version 1.0

task Raven {
  input {
    Int polishingPolishingRounds
    Int matchMatch
    Int mismatchMismatch
    Int gapGap
    String graphicalGraphicalFragmentAssembly
    Boolean resumeResume
    Int threadsThreads
  }
  command <<<
    raven \
      ~{if defined(polishingPolishingRounds) then ("--polishing-rounds " +  '"' + polishingPolishingRounds + '"') else ""} \
      ~{if defined(matchMatch) then ("--match " +  '"' + matchMatch + '"') else ""} \
      ~{if defined(mismatchMismatch) then ("--mismatch " +  '"' + mismatchMismatch + '"') else ""} \
      ~{if defined(gapGap) then ("--gap " +  '"' + gapGap + '"') else ""} \
      ~{if defined(graphicalGraphicalFragmentAssembly) then ("--graphical-fragment-assembly " +  '"' + graphicalGraphicalFragmentAssembly + '"') else ""} \
      ~{true="--resume" false="" resumeResume} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}