version 1.0

task Promoterwise {
  input {
    Boolean alignAlign
    Boolean sS
    Boolean tT
    Boolean uU
    Boolean vV
    Boolean lhLhWindow
    Boolean lhLhSeed
    Boolean lhaLhaLn
    Boolean lhLhScore
    Boolean lhLhReject
    Boolean lhLhMax
    Boolean lrLr
    String benBen
    Boolean motifMotifLib
    Boolean mmMmMotif
    Boolean mmMmCons
    Boolean mmMmSpacer
    Boolean mmMmMotifInDel
    Boolean mmMmConsInDel
    Boolean mmMmSpacerInDel
    Boolean mmMmSwitchMotif
    Boolean mmMmSwitchCons
    Boolean tfmTfmType
    Boolean tfmTfmCutOff
    Boolean tfmTfmRel
    Boolean tfmTfmRelBits
    Boolean hitHitOutput
    Boolean hitHitHelp
    Boolean dyDyDebug
    Boolean palPalDebug
    Boolean versionVersion
    Boolean silentSilent
    Boolean quietQuiet
    String errorErrorOffStd
    Boolean errorErrorLog
    Boolean errorErrorStyle
  }
  command <<<
    promoterwise \
      ~{true="-align" false="" alignAlign} \
      ~{true="-s" false="" sS} \
      ~{true="-t" false="" tT} \
      ~{true="-u" false="" uU} \
      ~{true="-v" false="" vV} \
      ~{true="-lhwindow" false="" lhLhWindow} \
      ~{true="-lhseed" false="" lhLhSeed} \
      ~{true="-lhaln" false="" lhaLhaLn} \
      ~{true="-lhscore" false="" lhLhScore} \
      ~{true="-lhreject" false="" lhLhReject} \
      ~{true="-lhmax" false="" lhLhMax} \
      ~{true="-lr" false="" lrLr} \
      ~{if defined(benBen) then ("-ben " +  '"' + benBen + '"') else ""} \
      ~{true="-motiflib" false="" motifMotifLib} \
      ~{true="-mm_motif" false="" mmMmMotif} \
      ~{true="-mm_cons" false="" mmMmCons} \
      ~{true="-mm_spacer" false="" mmMmSpacer} \
      ~{true="-mm_motif_indel" false="" mmMmMotifInDel} \
      ~{true="-mm_cons_indel" false="" mmMmConsInDel} \
      ~{true="-mm_spacer_indel" false="" mmMmSpacerInDel} \
      ~{true="-mm_switch_motif" false="" mmMmSwitchMotif} \
      ~{true="-mm_switch_cons" false="" mmMmSwitchCons} \
      ~{true="-tfm_type" false="" tfmTfmType} \
      ~{true="-tfm_cutoff" false="" tfmTfmCutOff} \
      ~{true="-tfm_rel" false="" tfmTfmRel} \
      ~{true="-tfm_relbits" false="" tfmTfmRelBits} \
      ~{true="-hitoutput" false="" hitHitOutput} \
      ~{true="-hithelp" false="" hitHitHelp} \
      ~{true="-dydebug" false="" dyDyDebug} \
      ~{true="-paldebug" false="" palPalDebug} \
      ~{true="-version" false="" versionVersion} \
      ~{true="-silent" false="" silentSilent} \
      ~{true="-quiet" false="" quietQuiet} \
      ~{if defined(errorErrorOffStd) then ("-erroroffstd " +  '"' + errorErrorOffStd + '"') else ""} \
      ~{true="-errorlog" false="" errorErrorLog} \
      ~{true="-errorstyle" false="" errorErrorStyle}
  >>>
}