version 1.0

task PhastCons {
  input {
    Boolean scoreScore
    String noNoPostProbs
    String estimateEstimateTrees
    Boolean scoreScore
    String lnlLnl
    Boolean noNoPostProbs
    String logLog
    String refRefIdx
    String seqnameSeqname
    String idIdPref
    Boolean quietQuiet
    Boolean indelsIndelsOnly
    String aliasAlias
    String statesStates
    String reflectReflectStrand
    String requireRequireInformative
    String notNotInformative
    Boolean ignoreIgnoreMissing
  }
  command <<<
    phastCons \
      ~{true="--score" false="" scoreScore} \
      ~{if defined(noNoPostProbs) then ("--no-post-probs " +  '"' + noNoPostProbs + '"') else ""} \
      ~{if defined(estimateEstimateTrees) then ("--estimate-trees " +  '"' + estimateEstimateTrees + '"') else ""} \
      ~{true="--score" false="" scoreScore} \
      ~{if defined(lnlLnl) then ("--lnl " +  '"' + lnlLnl + '"') else ""} \
      ~{true="--no-post-probs" false="" noNoPostProbs} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(refRefIdx) then ("--refidx " +  '"' + refRefIdx + '"') else ""} \
      ~{if defined(seqnameSeqname) then ("--seqname " +  '"' + seqnameSeqname + '"') else ""} \
      ~{if defined(idIdPref) then ("--idpref " +  '"' + idIdPref + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--indels-only" false="" indelsIndelsOnly} \
      ~{if defined(aliasAlias) then ("--alias " +  '"' + aliasAlias + '"') else ""} \
      ~{if defined(statesStates) then ("--states " +  '"' + statesStates + '"') else ""} \
      ~{if defined(reflectReflectStrand) then ("--reflect-strand " +  '"' + reflectReflectStrand + '"') else ""} \
      ~{if defined(requireRequireInformative) then ("--require-informative " +  '"' + requireRequireInformative + '"') else ""} \
      ~{if defined(notNotInformative) then ("--not-informative " +  '"' + notNotInformative + '"') else ""} \
      ~{true="--ignore-missing" false="" ignoreIgnoreMissing}
  >>>
}