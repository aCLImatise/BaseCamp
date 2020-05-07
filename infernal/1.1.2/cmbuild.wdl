version 1.0

task Cmbuild {
  input {
    String nN
    Boolean fF
    String oO
    String oO
    Boolean devhelpDevhelp
    Boolean fastFast
    Boolean handHand
    String symSymFrac
    Boolean nossNoss
    String rRSearch
    String nullNull
    String priorPrior
    Boolean wpbWpb
    Boolean wgsWgsC
    Boolean wWNone
    Boolean wWGiven
    Boolean wWBlosum
    String widWid
    Boolean eEEnt
    Boolean enEnOne
    String ereEre
    String eESet
    String eminEminSeq
    String eEHmmRe
    String eESigma
    String p7ereP7ere
    Boolean p7mlP7ml
    String emnEmn
    String evnEvn
    String elfElfN
    String egEgFn
    String refineRefine
    Boolean lL
    Boolean gibbsGibbs
    String seedSeed
    Boolean cyCyK
    Boolean notNotRunC
    String? cmCmFileOut
    String? msaMsaFile
  }
  command <<<
    cmbuild \
      ~{cmCmFileOut} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{true="-F" false="" fF} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""} \
      ~{true="--devhelp" false="" devhelpDevhelp} \
      ~{true="--fast" false="" fastFast} \
      ~{true="--hand" false="" handHand} \
      ~{if defined(symSymFrac) then ("--symfrac " +  '"' + symSymFrac + '"') else ""} \
      ~{true="--noss" false="" nossNoss} \
      ~{if defined(rRSearch) then ("--rsearch " +  '"' + rRSearch + '"') else ""} \
      ~{if defined(nullNull) then ("--null " +  '"' + nullNull + '"') else ""} \
      ~{if defined(priorPrior) then ("--prior " +  '"' + priorPrior + '"') else ""} \
      ~{true="--wpb" false="" wpbWpb} \
      ~{true="--wgsc" false="" wgsWgsC} \
      ~{true="--wnone" false="" wWNone} \
      ~{true="--wgiven" false="" wWGiven} \
      ~{true="--wblosum" false="" wWBlosum} \
      ~{if defined(widWid) then ("--wid " +  '"' + widWid + '"') else ""} \
      ~{true="--eent" false="" eEEnt} \
      ~{true="--enone" false="" enEnOne} \
      ~{if defined(ereEre) then ("--ere " +  '"' + ereEre + '"') else ""} \
      ~{if defined(eESet) then ("--eset " +  '"' + eESet + '"') else ""} \
      ~{if defined(eminEminSeq) then ("--eminseq " +  '"' + eminEminSeq + '"') else ""} \
      ~{if defined(eEHmmRe) then ("--ehmmre " +  '"' + eEHmmRe + '"') else ""} \
      ~{if defined(eESigma) then ("--esigma " +  '"' + eESigma + '"') else ""} \
      ~{if defined(p7ereP7ere) then ("--p7ere " +  '"' + p7ereP7ere + '"') else ""} \
      ~{true="--p7ml" false="" p7mlP7ml} \
      ~{if defined(emnEmn) then ("--EmN " +  '"' + emnEmn + '"') else ""} \
      ~{if defined(evnEvn) then ("--EvN " +  '"' + evnEvn + '"') else ""} \
      ~{if defined(elfElfN) then ("--ElfN " +  '"' + elfElfN + '"') else ""} \
      ~{if defined(egEgFn) then ("--EgfN " +  '"' + egEgFn + '"') else ""} \
      ~{if defined(refineRefine) then ("--refine " +  '"' + refineRefine + '"') else ""} \
      ~{true="-l" false="" lL} \
      ~{true="--gibbs" false="" gibbsGibbs} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="--cyk" false="" cyCyK} \
      ~{true="--notrunc" false="" notNotRunC} \
      ~{msaMsaFile}
  >>>
}