version 1.0

task Pplacer {
  input {
    Boolean cC
    Boolean tT
    Boolean rR
    Boolean sS
    Boolean dD
    Boolean pP
    Boolean mM
    Boolean modelModelFreqs
    Boolean gammaGammaCats
    Boolean gammaGammaAlpha
    Boolean mlMlTolerance
    Boolean ppPpRelErr
    Boolean unifUnifPrior
    Boolean informInformPrior
    Boolean priorPriorLower
    Boolean startStartPend
    Boolean maxMaxPend
    Boolean figFigCutOff
    Boolean figFigEvalAll
    Boolean figFigEvalDiscrepancyTree
    Boolean figFigTree
    Boolean maxMaxStrikes
    Boolean strikeStrikeBox
    Boolean maxMaxPitches
    Boolean fantasyFantasy
    Boolean fantasyFantasyFrac
    Boolean writeWriteMasked
    Boolean verbosityVerbosity
    Boolean outOutDir
    Boolean oO
    Boolean pretendPretend
    Boolean checkCheckLike
    Boolean jJ
    Boolean timingTiming
    Boolean noNoPreMask
    Boolean writeWritePreMasked
    Boolean mapMapMrca
    Boolean mapMapMrcaMin
    Boolean mapMapIdentity
    Boolean keepKeepAtMost
    Boolean keepKeepFactor
    Boolean mrcaMrcaClass
    Boolean groupsGroups
    Boolean alwaysAlwaysRefine
    Boolean mmapMmapFile
    Boolean discardDiscardNonOverlapped
    Boolean helpHelp
  }
  command <<<
    pplacer \
      ~{true="-c" false="" cC} \
      ~{true="-t" false="" tT} \
      ~{true="-r" false="" rR} \
      ~{true="-s" false="" sS} \
      ~{true="-d" false="" dD} \
      ~{true="-p" false="" pP} \
      ~{true="-m" false="" mM} \
      ~{true="--model-freqs" false="" modelModelFreqs} \
      ~{true="--gamma-cats" false="" gammaGammaCats} \
      ~{true="--gamma-alpha" false="" gammaGammaAlpha} \
      ~{true="--ml-tolerance" false="" mlMlTolerance} \
      ~{true="--pp-rel-err" false="" ppPpRelErr} \
      ~{true="--unif-prior" false="" unifUnifPrior} \
      ~{true="--inform-prior" false="" informInformPrior} \
      ~{true="--prior-lower" false="" priorPriorLower} \
      ~{true="--start-pend" false="" startStartPend} \
      ~{true="--max-pend" false="" maxMaxPend} \
      ~{true="--fig-cutoff" false="" figFigCutOff} \
      ~{true="--fig-eval-all" false="" figFigEvalAll} \
      ~{true="--fig-eval-discrepancy-tree" false="" figFigEvalDiscrepancyTree} \
      ~{true="--fig-tree" false="" figFigTree} \
      ~{true="--max-strikes" false="" maxMaxStrikes} \
      ~{true="--strike-box" false="" strikeStrikeBox} \
      ~{true="--max-pitches" false="" maxMaxPitches} \
      ~{true="--fantasy" false="" fantasyFantasy} \
      ~{true="--fantasy-frac" false="" fantasyFantasyFrac} \
      ~{true="--write-masked" false="" writeWriteMasked} \
      ~{true="--verbosity" false="" verbosityVerbosity} \
      ~{true="--out-dir" false="" outOutDir} \
      ~{true="-o" false="" oO} \
      ~{true="--pretend" false="" pretendPretend} \
      ~{true="--check-like" false="" checkCheckLike} \
      ~{true="-j" false="" jJ} \
      ~{true="--timing" false="" timingTiming} \
      ~{true="--no-pre-mask" false="" noNoPreMask} \
      ~{true="--write-pre-masked" false="" writeWritePreMasked} \
      ~{true="--map-mrca" false="" mapMapMrca} \
      ~{true="--map-mrca-min" false="" mapMapMrcaMin} \
      ~{true="--map-identity" false="" mapMapIdentity} \
      ~{true="--keep-at-most" false="" keepKeepAtMost} \
      ~{true="--keep-factor" false="" keepKeepFactor} \
      ~{true="--mrca-class" false="" mrcaMrcaClass} \
      ~{true="--groups" false="" groupsGroups} \
      ~{true="--always-refine" false="" alwaysAlwaysRefine} \
      ~{true="--mmap-file" false="" mmapMmapFile} \
      ~{true="--discard-nonoverlapped" false="" discardDiscardNonOverlapped} \
      ~{true="--help" false="" helpHelp}
  >>>
}