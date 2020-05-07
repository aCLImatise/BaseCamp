version 1.0

task FilterEvents {
  input {
    Boolean filterFilter
    Boolean controlControl
    String outputOutputDir
    String numNumTotal
    String numNumInc
    String numNumExc
    String numNumSumIncExc
    String deltaDeltaPsi
    String bayesBayesFactor
    Boolean applyApplyBoth
    String votesVotes
  }
  command <<<
    filter_events \
      ~{true="--filter" false="" filterFilter} \
      ~{true="--control" false="" controlControl} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(numNumTotal) then ("--num-total " +  '"' + numNumTotal + '"') else ""} \
      ~{if defined(numNumInc) then ("--num-inc " +  '"' + numNumInc + '"') else ""} \
      ~{if defined(numNumExc) then ("--num-exc " +  '"' + numNumExc + '"') else ""} \
      ~{if defined(numNumSumIncExc) then ("--num-sum-inc-exc " +  '"' + numNumSumIncExc + '"') else ""} \
      ~{if defined(deltaDeltaPsi) then ("--delta-psi " +  '"' + deltaDeltaPsi + '"') else ""} \
      ~{if defined(bayesBayesFactor) then ("--bayes-factor " +  '"' + bayesBayesFactor + '"') else ""} \
      ~{true="--apply-both" false="" applyApplyBoth} \
      ~{if defined(votesVotes) then ("--votes " +  '"' + votesVotes + '"') else ""}
  >>>
}