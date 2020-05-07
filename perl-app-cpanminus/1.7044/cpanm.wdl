version 1.0

task Cpanm {
  input {
    Boolean verboseVerbose
    Boolean quietQuiet
    Boolean interactiveInteractive
    Boolean forceForce
    Boolean notNotEst
    Boolean testTestOnly
    Boolean sudoSudo
    Boolean installInstallDeps
    Boolean showShowDeps
    Boolean reinstallReinstall
    Boolean mirrorMirror
    Boolean mirrorMirrorOnly
    Boolean fromFrom
    Boolean promptPrompt
    Boolean localLocalLib
    Boolean localLocalLibContained
    Boolean selfSelfContained
    Boolean autoAutoCleanup
    Boolean selfSelfUpgrade
    Boolean infoInfo
    Boolean lookLook
    Boolean uninstallUninstall
  }
  command <<<
    cpanm \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--interactive" false="" interactiveInteractive} \
      ~{true="--force" false="" forceForce} \
      ~{true="--notest" false="" notNotEst} \
      ~{true="--test-only" false="" testTestOnly} \
      ~{true="--sudo" false="" sudoSudo} \
      ~{true="--installdeps" false="" installInstallDeps} \
      ~{true="--showdeps" false="" showShowDeps} \
      ~{true="--reinstall" false="" reinstallReinstall} \
      ~{true="--mirror" false="" mirrorMirror} \
      ~{true="--mirror-only" false="" mirrorMirrorOnly} \
      ~{true="--from" false="" fromFrom} \
      ~{true="--prompt" false="" promptPrompt} \
      ~{true="--local-lib" false="" localLocalLib} \
      ~{true="--local-lib-contained" false="" localLocalLibContained} \
      ~{true="--self-contained" false="" selfSelfContained} \
      ~{true="--auto-cleanup" false="" autoAutoCleanup} \
      ~{true="--self-upgrade" false="" selfSelfUpgrade} \
      ~{true="--info" false="" infoInfo} \
      ~{true="--look" false="" lookLook} \
      ~{true="--uninstall" false="" uninstallUninstall}
  >>>
}