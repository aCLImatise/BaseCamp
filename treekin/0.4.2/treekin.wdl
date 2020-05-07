version 1.0

task Treekin {
  input {
    String absorbAbsorb
    String methodMethod
    String numNumErr
    String t0T0
    String t8T8
    String tempTemp
    Int nNStates
    String p0P0
    String tincTinc
    Boolean degeneracyDegeneracy
    Boolean exponentExponent
    Boolean dumpDumpU
    Boolean mathematicaMathematicaMatrix
    Boolean binBin
    String barBar
    String fptFpt
    Boolean recoverRecoverE
    Boolean dumpDumpE
    Boolean dumpDumpX
    Boolean infoInfo
    Boolean verboseVerbose
    Boolean quietQuiet
    String fptFptFile
    String visualizeVisualize
    Boolean justJustShorten
    Int maxMaxDecrease
    String fepsFeps
    Boolean useUsePlusI
    String minimalMinimalRate
    String hardHardRescale
    String equiEquiLFile
    String timesTimes
    Boolean warningsWarnings
  }
  command <<<
    treekin \
      ~{if defined(absorbAbsorb) then ("--absorb " +  '"' + absorbAbsorb + '"') else ""} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(numNumErr) then ("--num-err " +  '"' + numNumErr + '"') else ""} \
      ~{if defined(t0T0) then ("--t0 " +  '"' + t0T0 + '"') else ""} \
      ~{if defined(t8T8) then ("--t8 " +  '"' + t8T8 + '"') else ""} \
      ~{if defined(tempTemp) then ("--Temp " +  '"' + tempTemp + '"') else ""} \
      ~{if defined(nNStates) then ("--nstates " +  '"' + nNStates + '"') else ""} \
      ~{if defined(p0P0) then ("--p0 " +  '"' + p0P0 + '"') else ""} \
      ~{if defined(tincTinc) then ("--tinc " +  '"' + tincTinc + '"') else ""} \
      ~{true="--degeneracy" false="" degeneracyDegeneracy} \
      ~{true="--exponent" false="" exponentExponent} \
      ~{true="--dumpU" false="" dumpDumpU} \
      ~{true="--mathematicamatrix" false="" mathematicaMathematicaMatrix} \
      ~{true="--bin" false="" binBin} \
      ~{if defined(barBar) then ("--bar " +  '"' + barBar + '"') else ""} \
      ~{if defined(fptFpt) then ("--fpt " +  '"' + fptFpt + '"') else ""} \
      ~{true="--recoverE" false="" recoverRecoverE} \
      ~{true="--dumpE" false="" dumpDumpE} \
      ~{true="--dumpX" false="" dumpDumpX} \
      ~{true="--info" false="" infoInfo} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(fptFptFile) then ("--fptfile " +  '"' + fptFptFile + '"') else ""} \
      ~{if defined(visualizeVisualize) then ("--visualize " +  '"' + visualizeVisualize + '"') else ""} \
      ~{true="--just-shorten" false="" justJustShorten} \
      ~{if defined(maxMaxDecrease) then ("--max-decrease " +  '"' + maxMaxDecrease + '"') else ""} \
      ~{if defined(fepsFeps) then ("--feps " +  '"' + fepsFeps + '"') else ""} \
      ~{true="--useplusI" false="" useUsePlusI} \
      ~{if defined(minimalMinimalRate) then ("--minimal-rate " +  '"' + minimalMinimalRate + '"') else ""} \
      ~{if defined(hardHardRescale) then ("--hard-rescale " +  '"' + hardHardRescale + '"') else ""} \
      ~{if defined(equiEquiLFile) then ("--equil-file " +  '"' + equiEquiLFile + '"') else ""} \
      ~{if defined(timesTimes) then ("--times " +  '"' + timesTimes + '"') else ""} \
      ~{true="--warnings" false="" warningsWarnings}
  >>>
}