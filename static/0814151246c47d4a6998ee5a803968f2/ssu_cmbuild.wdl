version 1.0

task SsuCmbuild {
  input {
    String nN
    Boolean aA
    Boolean fF
    Boolean vV
    Boolean iIIns
    String wWBeta
    Boolean devhelpDevhelp
    String rRSearch
    Boolean binaryBinary
    Boolean rfRf
    String gapGapThresh
    Boolean ignorantIgnorant
    Boolean wgsWgsC
    Boolean wWBlosum
    Boolean wpbWpb
    Boolean wWNone
    Boolean wWGiven
    String pbPbSwitch
    String widWid
    Boolean eEEnt
    Boolean enEnOne
    String ereEre
    String eEHmmRe
    String nullNull
    String priorPrior
    String cCTarget
    String cmaxCmaxId
    Boolean callCall
    Boolean cCOrig
    String cCDump
    String refineRefine
    Boolean gibbsGibbs
    String sS
    Boolean lL
    Boolean aA
    Boolean cyCyK
    Boolean subSub
    Boolean nonNonBanded
    String tauTau
    Boolean finsFins
    String mxMxSize
    String rRDump
    Boolean iILeaved
    String? cmCmFileOutput
    String? alignmentAlignmentFile
  }
  command <<<
    ssu-cmbuild \
      ~{cmCmFileOutput} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{true="-A" false="" aA} \
      ~{true="-F" false="" fF} \
      ~{true="-v" false="" vV} \
      ~{true="--iins" false="" iIIns} \
      ~{if defined(wWBeta) then ("--Wbeta " +  '"' + wWBeta + '"') else ""} \
      ~{true="--devhelp" false="" devhelpDevhelp} \
      ~{if defined(rRSearch) then ("--rsearch " +  '"' + rRSearch + '"') else ""} \
      ~{true="--binary" false="" binaryBinary} \
      ~{true="--rf" false="" rfRf} \
      ~{if defined(gapGapThresh) then ("--gapthresh " +  '"' + gapGapThresh + '"') else ""} \
      ~{true="--ignorant" false="" ignorantIgnorant} \
      ~{true="--wgsc" false="" wgsWgsC} \
      ~{true="--wblosum" false="" wWBlosum} \
      ~{true="--wpb" false="" wpbWpb} \
      ~{true="--wnone" false="" wWNone} \
      ~{true="--wgiven" false="" wWGiven} \
      ~{if defined(pbPbSwitch) then ("--pbswitch " +  '"' + pbPbSwitch + '"') else ""} \
      ~{if defined(widWid) then ("--wid " +  '"' + widWid + '"') else ""} \
      ~{true="--eent" false="" eEEnt} \
      ~{true="--enone" false="" enEnOne} \
      ~{if defined(ereEre) then ("--ere " +  '"' + ereEre + '"') else ""} \
      ~{if defined(eEHmmRe) then ("--ehmmre " +  '"' + eEHmmRe + '"') else ""} \
      ~{if defined(nullNull) then ("--null " +  '"' + nullNull + '"') else ""} \
      ~{if defined(priorPrior) then ("--prior " +  '"' + priorPrior + '"') else ""} \
      ~{if defined(cCTarget) then ("--ctarget " +  '"' + cCTarget + '"') else ""} \
      ~{if defined(cmaxCmaxId) then ("--cmaxid " +  '"' + cmaxCmaxId + '"') else ""} \
      ~{true="--call" false="" callCall} \
      ~{true="--corig" false="" cCOrig} \
      ~{if defined(cCDump) then ("--cdump " +  '"' + cCDump + '"') else ""} \
      ~{if defined(refineRefine) then ("--refine " +  '"' + refineRefine + '"') else ""} \
      ~{true="--gibbs" false="" gibbsGibbs} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-l" false="" lL} \
      ~{true="-a" false="" aA} \
      ~{true="--cyk" false="" cyCyK} \
      ~{true="--sub" false="" subSub} \
      ~{true="--nonbanded" false="" nonNonBanded} \
      ~{if defined(tauTau) then ("--tau " +  '"' + tauTau + '"') else ""} \
      ~{true="--fins" false="" finsFins} \
      ~{if defined(mxMxSize) then ("--mxsize " +  '"' + mxMxSize + '"') else ""} \
      ~{if defined(rRDump) then ("--rdump " +  '"' + rRDump + '"') else ""} \
      ~{true="--ileaved" false="" iILeaved} \
      ~{alignmentAlignmentFile}
  >>>
}