version 1.0

task Coalescent {
  input {
    Boolean pP
    Boolean rR
    Boolean genGenMapRandomRegions
    Boolean jJ
    Boolean nN
    Boolean rR
    Boolean uU
    Boolean uU
    Boolean gG
    Boolean eE
    Boolean apxApxWithTRajOk
    String apxApxMinFactor
    String apxApxRejSamp
    Boolean sweep3Sweep3NoOneSidedReCombs
    Boolean showShowOneSimProgress
    String poPoIsMaxSteps
    String poPoIsPrec
    Boolean tTRajOnly
    Boolean oO
    Boolean mM
    String tpTpEd
    Boolean outputOutputPopInfo
    Boolean outputOutputGenMap
    Boolean pP
    Boolean jJ
    Boolean tT
    Boolean mM
    Boolean lL
    Boolean eE
    Boolean cC
    String dropDropSingletons
    Boolean vV
    Boolean vV
    Boolean gG
    Boolean lL
    Boolean sS
    Boolean dD
    Boolean tT
    Boolean kK
    Boolean sS
    Boolean outputOutputSimTimes
    Boolean outputOutputEndGens
    String stopStopAfterMinutes
    Boolean customCustomStats
    String customCustomStatsExcludePop
  }
  command <<<
    coalescent \
      ~{true="-p" false="" pP} \
      ~{true="-R" false="" rR} \
      ~{true="--genmapRandomRegions" false="" genGenMapRandomRegions} \
      ~{true="-J" false="" jJ} \
      ~{true="-n" false="" nN} \
      ~{true="-r" false="" rR} \
      ~{true="-u" false="" uU} \
      ~{true="-U" false="" uU} \
      ~{true="-G" false="" gG} \
      ~{true="-E" false="" eE} \
      ~{true="--apx-with-traj-ok" false="" apxApxWithTRajOk} \
      ~{if defined(apxApxMinFactor) then ("--apx-min-factor " +  '"' + apxApxMinFactor + '"') else ""} \
      ~{if defined(apxApxRejSamp) then ("--apx-rej-samp " +  '"' + apxApxRejSamp + '"') else ""} \
      ~{true="--sweep3-no-one-sided-recombs" false="" sweep3Sweep3NoOneSidedReCombs} \
      ~{true="--show-one-sim-progress" false="" showShowOneSimProgress} \
      ~{if defined(poPoIsMaxSteps) then ("--pois-max-steps " +  '"' + poPoIsMaxSteps + '"') else ""} \
      ~{if defined(poPoIsPrec) then ("--pois-prec " +  '"' + poPoIsPrec + '"') else ""} \
      ~{true="--traj-only" false="" tTRajOnly} \
      ~{true="-o" false="" oO} \
      ~{true="-m" false="" mM} \
      ~{if defined(tpTpEd) then ("--tped " +  '"' + tpTpEd + '"') else ""} \
      ~{true="--output-pop-info" false="" outputOutputPopInfo} \
      ~{true="--output-gen-map" false="" outputOutputGenMap} \
      ~{true="-P" false="" pP} \
      ~{true="-j" false="" jJ} \
      ~{true="-T" false="" tT} \
      ~{true="-M" false="" mM} \
      ~{true="-L" false="" lL} \
      ~{true="-e" false="" eE} \
      ~{true="-C" false="" cC} \
      ~{if defined(dropDropSingletons) then ("--drop-singletons " +  '"' + dropDropSingletons + '"') else ""} \
      ~{true="-V" false="" vV} \
      ~{true="-v" false="" vV} \
      ~{true="-g" false="" gG} \
      ~{true="-l" false="" lL} \
      ~{true="-s" false="" sS} \
      ~{true="-d" false="" dD} \
      ~{true="-t" false="" tT} \
      ~{true="-k" false="" kK} \
      ~{true="-S" false="" sS} \
      ~{true="--output-sim-times" false="" outputOutputSimTimes} \
      ~{true="--output-end-gens" false="" outputOutputEndGens} \
      ~{if defined(stopStopAfterMinutes) then ("--stop-after-minutes " +  '"' + stopStopAfterMinutes + '"') else ""} \
      ~{true="--custom-stats" false="" customCustomStats} \
      ~{if defined(customCustomStatsExcludePop) then ("--custom-stats-exclude-pop " +  '"' + customCustomStatsExcludePop + '"') else ""}
  >>>
}