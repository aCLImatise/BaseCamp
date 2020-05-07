version 1.0

task TRNAscanSE {
  input {
    Boolean eE
    Boolean bB
    Boolean aA
    String mM
    Boolean oO
    Boolean gG
    String mtMt
    Boolean iI
    Boolean maxMax
    Boolean lL
    Boolean coveCove
    Boolean breakdownBreakdown
    Boolean noNoPseudo
    String prefixPrefix
    Boolean progressProgress
    Boolean quietQuiet
    Boolean hitHitSrc
    String scoreScore
    File genGenCode
    String padPad
    Int lenLen
    File confConf
    Boolean forceForceOw
    String matchMatch
    String searchSearch
    Boolean uU
    Boolean tsTsCan
    String tTMode
    File verboseVerbose
    Boolean noNoMerge
    Boolean euEuFind
    String eEMode
    String isIsCore
    File fsFsRes
    Boolean midMid
    File falseFalsePos
    File missedMissed
    String threadThread
  }
  command <<<
    tRNAscan-SE \
      ~{true="-E" false="" eE} \
      ~{true="-B" false="" bB} \
      ~{true="-A" false="" aA} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{true="-O" false="" oO} \
      ~{true="-G" false="" gG} \
      ~{if defined(mtMt) then ("--mt " +  '"' + mtMt + '"') else ""} \
      ~{true="-I" false="" iI} \
      ~{true="--max" false="" maxMax} \
      ~{true="-L" false="" lL} \
      ~{true="--cove" false="" coveCove} \
      ~{true="--breakdown" false="" breakdownBreakdown} \
      ~{true="--nopseudo" false="" noNoPseudo} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--progress" false="" progressProgress} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--hitsrc" false="" hitHitSrc} \
      ~{if defined(scoreScore) then ("--score " +  '"' + scoreScore + '"') else ""} \
      ~{if defined(genGenCode) then ("--gencode " +  '"' + genGenCode + '"') else ""} \
      ~{if defined(padPad) then ("--pad " +  '"' + padPad + '"') else ""} \
      ~{if defined(lenLen) then ("--len " +  '"' + lenLen + '"') else ""} \
      ~{if defined(confConf) then ("--conf " +  '"' + confConf + '"') else ""} \
      ~{true="--forceow" false="" forceForceOw} \
      ~{if defined(matchMatch) then ("--match " +  '"' + matchMatch + '"') else ""} \
      ~{if defined(searchSearch) then ("--search " +  '"' + searchSearch + '"') else ""} \
      ~{true="-U" false="" uU} \
      ~{true="--tscan" false="" tsTsCan} \
      ~{if defined(tTMode) then ("--tmode " +  '"' + tTMode + '"') else ""} \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""} \
      ~{true="--nomerge" false="" noNoMerge} \
      ~{true="--eufind" false="" euEuFind} \
      ~{if defined(eEMode) then ("--emode " +  '"' + eEMode + '"') else ""} \
      ~{if defined(isIsCore) then ("--iscore " +  '"' + isIsCore + '"') else ""} \
      ~{if defined(fsFsRes) then ("--fsres " +  '"' + fsFsRes + '"') else ""} \
      ~{true="--mid" false="" midMid} \
      ~{if defined(falseFalsePos) then ("--falsepos " +  '"' + falseFalsePos + '"') else ""} \
      ~{if defined(missedMissed) then ("--missed " +  '"' + missedMissed + '"') else ""} \
      ~{if defined(threadThread) then ("--thread " +  '"' + threadThread + '"') else ""}
  >>>
}