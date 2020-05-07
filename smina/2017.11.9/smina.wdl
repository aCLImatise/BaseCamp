version 1.0

task Smina {
  input {
    Boolean rR
    String flexFlex
    Boolean lL
    String flexFlexRes
    String flexFlexDistLigand
    String flexFlexDist
    String centerCenterX
    String centerCenterY
    String centerCenterZ
    String sizeSizeX
    String sizeSizeY
    String sizeSizeZ
    String autoAutoBoxLigand
    String autoAutoBoxAdd
    Boolean noNoLig
    String scoringScoring
    String customCustomScoring
    String customCustomAtoms
    Boolean scoreScoreOnly
    Boolean localLocalOnly
    Boolean minimizeMinimize
    Boolean randomizeRandomizeOnly
    String minimizeMinimizeIters
    Boolean accurateAccurateLine
    Boolean minimizeMinimizeEarlyTerm
    String approximationApproximation
    String factorFactor
    String forceForceCap
    String userUserGrid
    String userUserGridLambda
    Boolean printPrintTerms
    Boolean printPrintAtomTypes
    Boolean oO
    String outOutFlex
    String logLog
    String atomAtomTerms
    Boolean atomAtomTermData
    String cpuCpu
    String seedSeed
    String exhaustiveExhaustiveNess
    String numNumModes
    String energyEnergyRange
    String minMinRmsdFilter
    Boolean qQ
    String addAddH
    String configConfig
    Boolean helpHelpHidden
  }
  command <<<
    smina \
      ~{true="-r" false="" rR} \
      ~{if defined(flexFlex) then ("--flex " +  '"' + flexFlex + '"') else ""} \
      ~{true="-l" false="" lL} \
      ~{if defined(flexFlexRes) then ("--flexres " +  '"' + flexFlexRes + '"') else ""} \
      ~{if defined(flexFlexDistLigand) then ("--flexdist_ligand " +  '"' + flexFlexDistLigand + '"') else ""} \
      ~{if defined(flexFlexDist) then ("--flexdist " +  '"' + flexFlexDist + '"') else ""} \
      ~{if defined(centerCenterX) then ("--center_x " +  '"' + centerCenterX + '"') else ""} \
      ~{if defined(centerCenterY) then ("--center_y " +  '"' + centerCenterY + '"') else ""} \
      ~{if defined(centerCenterZ) then ("--center_z " +  '"' + centerCenterZ + '"') else ""} \
      ~{if defined(sizeSizeX) then ("--size_x " +  '"' + sizeSizeX + '"') else ""} \
      ~{if defined(sizeSizeY) then ("--size_y " +  '"' + sizeSizeY + '"') else ""} \
      ~{if defined(sizeSizeZ) then ("--size_z " +  '"' + sizeSizeZ + '"') else ""} \
      ~{if defined(autoAutoBoxLigand) then ("--autobox_ligand " +  '"' + autoAutoBoxLigand + '"') else ""} \
      ~{if defined(autoAutoBoxAdd) then ("--autobox_add " +  '"' + autoAutoBoxAdd + '"') else ""} \
      ~{true="--no_lig" false="" noNoLig} \
      ~{if defined(scoringScoring) then ("--scoring " +  '"' + scoringScoring + '"') else ""} \
      ~{if defined(customCustomScoring) then ("--custom_scoring " +  '"' + customCustomScoring + '"') else ""} \
      ~{if defined(customCustomAtoms) then ("--custom_atoms " +  '"' + customCustomAtoms + '"') else ""} \
      ~{true="--score_only" false="" scoreScoreOnly} \
      ~{true="--local_only" false="" localLocalOnly} \
      ~{true="--minimize" false="" minimizeMinimize} \
      ~{true="--randomize_only" false="" randomizeRandomizeOnly} \
      ~{if defined(minimizeMinimizeIters) then ("--minimize_iters " +  '"' + minimizeMinimizeIters + '"') else ""} \
      ~{true="--accurate_line" false="" accurateAccurateLine} \
      ~{true="--minimize_early_term" false="" minimizeMinimizeEarlyTerm} \
      ~{if defined(approximationApproximation) then ("--approximation " +  '"' + approximationApproximation + '"') else ""} \
      ~{if defined(factorFactor) then ("--factor " +  '"' + factorFactor + '"') else ""} \
      ~{if defined(forceForceCap) then ("--force_cap " +  '"' + forceForceCap + '"') else ""} \
      ~{if defined(userUserGrid) then ("--user_grid " +  '"' + userUserGrid + '"') else ""} \
      ~{if defined(userUserGridLambda) then ("--user_grid_lambda " +  '"' + userUserGridLambda + '"') else ""} \
      ~{true="--print_terms" false="" printPrintTerms} \
      ~{true="--print_atom_types" false="" printPrintAtomTypes} \
      ~{true="-o" false="" oO} \
      ~{if defined(outOutFlex) then ("--out_flex " +  '"' + outOutFlex + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(atomAtomTerms) then ("--atom_terms " +  '"' + atomAtomTerms + '"') else ""} \
      ~{true="--atom_term_data" false="" atomAtomTermData} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(exhaustiveExhaustiveNess) then ("--exhaustiveness " +  '"' + exhaustiveExhaustiveNess + '"') else ""} \
      ~{if defined(numNumModes) then ("--num_modes " +  '"' + numNumModes + '"') else ""} \
      ~{if defined(energyEnergyRange) then ("--energy_range " +  '"' + energyEnergyRange + '"') else ""} \
      ~{if defined(minMinRmsdFilter) then ("--min_rmsd_filter " +  '"' + minMinRmsdFilter + '"') else ""} \
      ~{true="-q" false="" qQ} \
      ~{if defined(addAddH) then ("--addH " +  '"' + addAddH + '"') else ""} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{true="--help_hidden" false="" helpHelpHidden}
  >>>
}