version 1.0

task TutorialEqtlbma.R {
  input {
    Boolean verboseVerbose
    Boolean pkgPkg
    Boolean nsbNsbGrps
    Boolean nindsNinds
    Boolean nNGenes
    Boolean ncNcHrs
    Boolean aglAgl
    Boolean aAIl
    Boolean anchorAnchor
    Boolean cr5Cr5
    Boolean cr3Cr3
    Boolean fsgFsg
    Boolean asAsG
    Boolean mafMaf
    Boolean rareRare
    Boolean pi0Pi0
    Boolean coverCoverR
    Boolean seedSeed
    Boolean dirDir
    Boolean nNCores
  }
  command <<<
    tutorial_eqtlbma.R \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--pkg" false="" pkgPkg} \
      ~{true="--nsbgrps" false="" nsbNsbGrps} \
      ~{true="--ninds" false="" nindsNinds} \
      ~{true="--ngenes" false="" nNGenes} \
      ~{true="--nchrs" false="" ncNcHrs} \
      ~{true="--agl" false="" aglAgl} \
      ~{true="--ail" false="" aAIl} \
      ~{true="--anchor" false="" anchorAnchor} \
      ~{true="--cr5" false="" cr5Cr5} \
      ~{true="--cr3" false="" cr3Cr3} \
      ~{true="--fsg" false="" fsgFsg} \
      ~{true="--asg" false="" asAsG} \
      ~{true="--maf" false="" mafMaf} \
      ~{true="--rare" false="" rareRare} \
      ~{true="--pi0" false="" pi0Pi0} \
      ~{true="--coverr" false="" coverCoverR} \
      ~{true="--seed" false="" seedSeed} \
      ~{true="--dir" false="" dirDir} \
      ~{true="--ncores" false="" nNCores}
  >>>
}