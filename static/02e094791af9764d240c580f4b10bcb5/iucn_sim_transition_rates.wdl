version 1.0

task IucnSimTransitionRates {
  input {
    File speciesSpeciesData
    File iucnIucnHistory
    File outdirOutdir
    String extinctionExtinctionProbsMode
    File possiblyPossiblyExtinctList
    String rateRateSamples
    String nNGen
    String burninBurnin
    String seedSeed
  }
  command <<<
    iucn_sim transition_rates \
      ~{if defined(speciesSpeciesData) then ("--species_data " +  '"' + speciesSpeciesData + '"') else ""} \
      ~{if defined(iucnIucnHistory) then ("--iucn_history " +  '"' + iucnIucnHistory + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(extinctionExtinctionProbsMode) then ("--extinction_probs_mode " +  '"' + extinctionExtinctionProbsMode + '"') else ""} \
      ~{if defined(possiblyPossiblyExtinctList) then ("--possibly_extinct_list " +  '"' + possiblyPossiblyExtinctList + '"') else ""} \
      ~{if defined(rateRateSamples) then ("--rate_samples " +  '"' + rateRateSamples + '"') else ""} \
      ~{if defined(nNGen) then ("--n_gen " +  '"' + nNGen + '"') else ""} \
      ~{if defined(burninBurnin) then ("--burnin " +  '"' + burninBurnin + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""}
  >>>
}