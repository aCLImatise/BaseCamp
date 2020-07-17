version 1.0

task IucnSimTransitionRates {
  input {
    File? species_data
    File? iucn_history
    File? outdir
    String? extinction_probs_mode
    File? possibly_extinct_list
    String? rate_samples
    String? n_gen
    String? burnin
    String? seed
  }
  command <<<
    iucn_sim transition_rates \
      ~{if defined(species_data) then ("--species_data " +  '"' + species_data + '"') else ""} \
      ~{if defined(iucn_history) then ("--iucn_history " +  '"' + iucn_history + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(extinction_probs_mode) then ("--extinction_probs_mode " +  '"' + extinction_probs_mode + '"') else ""} \
      ~{if defined(possibly_extinct_list) then ("--possibly_extinct_list " +  '"' + possibly_extinct_list + '"') else ""} \
      ~{if defined(rate_samples) then ("--rate_samples " +  '"' + rate_samples + '"') else ""} \
      ~{if defined(n_gen) then ("--n_gen " +  '"' + n_gen + '"') else ""} \
      ~{if defined(burnin) then ("--burnin " +  '"' + burnin + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  parameter_meta {
    species_data: "File containing species list and current IUCN status of species, as well as generation length (GL) data estimates if available. GL data is only used for '-- extinction_probs_mode 0' ('species_data.txt' output from get_iucn_data function)."
    iucn_history: "File containing IUCN history of the reference group for transition rate estimation ('*_iucn_history.txt' output of get_iucn_data function)."
    outdir: "Provide path to outdir where results will be saved."
    extinction_probs_mode: "Set to '0' to use IUCN defined extinction probabilities (e.g. Mooers et al, 2008 approach), also using available GL data to estimate species-specific extinction probabilities. Set to '1' to simulate extinctions based on recorded extinctions in IUCN history (e.g. Monroe et al, 2019 approach, no GL data is being used)."
    possibly_extinct_list: "File containing list of taxa that are likely extinct, but that are listed as extant in IUCN, including the year of their assessment as possibly extinct ('possibly_extinct_reference_taxa.txt' output from get_iucn_data function). These species will then be modeled as extinct by the esimate_rates function, which will effect the estimated extinction probabilities when chosing `--extinction_probs_mode 1`"
    rate_samples: "How many rates to sample from the posterior transition rate estimates. These rates will be used to populate transition rate q-matrices for downstream simulations. Later on you can still chose to run more simulation replicates than the here specified number of produced transition rate q-matrices, in which case the `run_sim` function will randomely resample from the available q-matrices (default=100, this is ususally sufficient, larger numbers can lead to very high output file size volumes)."
    n_gen: "Number of generations for MCMC for transition rate estimation (default=100000)."
    burnin: "Burn-in for MCMC for transition rate estimation (default=1000)."
    seed: "Set random seed for the MCMC."
  }
}