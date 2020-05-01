version 1.0

task Hmmbuild2 {
  input {
    String nN
    String oO
    Boolean aA
    Boolean fF
    Boolean fF
    Boolean gG
    Boolean sS
    Boolean fastFast
    Boolean handHand
    Boolean nullNull
    Boolean pamPam
    String priorPrior
    Boolean wWBlosum
    Boolean wgsWgsC
    Boolean wWMe
    Boolean wpbWpb
    Boolean wWVoronoi
    Boolean wWNone
    Boolean noNoEff
    String pbPbSwitch
    Boolean aminoAmino
    Boolean nucleicNucleic
    String archArchPri
    Boolean binaryBinary
    String cCFile
    String gapGapMax
    String idIdLevel
    String inInFormat
    String pamPamWgt
    String swSwEntry
    String swSwExit
    Boolean verboseVerbose
  }
  command <<<
    hmmbuild2 \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-A" false="" aA} \
      ~{true="-F" false="" fF} \
      ~{true="-f" false="" fF} \
      ~{true="-g" false="" gG} \
      ~{true="-s" false="" sS} \
      ~{true="--fast" false="" fastFast} \
      ~{true="--hand" false="" handHand} \
      ~{true="--null" false="" nullNull} \
      ~{true="--pam" false="" pamPam} \
      ~{if defined(priorPrior) then ("--prior " +  '"' + priorPrior + '"') else ""} \
      ~{true="--wblosum" false="" wWBlosum} \
      ~{true="--wgsc" false="" wgsWgsC} \
      ~{true="--wme" false="" wWMe} \
      ~{true="--wpb" false="" wpbWpb} \
      ~{true="--wvoronoi" false="" wWVoronoi} \
      ~{true="--wnone" false="" wWNone} \
      ~{true="--noeff" false="" noNoEff} \
      ~{if defined(pbPbSwitch) then ("--pbswitch " +  '"' + pbPbSwitch + '"') else ""} \
      ~{true="--amino" false="" aminoAmino} \
      ~{true="--nucleic" false="" nucleicNucleic} \
      ~{if defined(archArchPri) then ("--archpri " +  '"' + archArchPri + '"') else ""} \
      ~{true="--binary" false="" binaryBinary} \
      ~{if defined(cCFile) then ("--cfile " +  '"' + cCFile + '"') else ""} \
      ~{if defined(gapGapMax) then ("--gapmax " +  '"' + gapGapMax + '"') else ""} \
      ~{if defined(idIdLevel) then ("--idlevel " +  '"' + idIdLevel + '"') else ""} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{if defined(pamPamWgt) then ("--pamwgt " +  '"' + pamPamWgt + '"') else ""} \
      ~{if defined(swSwEntry) then ("--swentry " +  '"' + swSwEntry + '"') else ""} \
      ~{if defined(swSwExit) then ("--swexit " +  '"' + swSwExit + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}