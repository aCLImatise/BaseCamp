version 1.0

task IucnSimTransitionRates {
  input {
    File? species_data
    File? iucn_history
    File? outdir
    Int? extinction_probs_mode
    File? possibly_extinct_list
    Int? rate_samples
    Int? n_gen
    Int? burnin
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
  runtime {
    docker: "None"
  }
  parameter_meta {
    species_data: "File containing species list and current IUCN status\\nof species, as well as generation length (GL) data\\nestimates if available. GL data is only used for '--\\nextinction_probs_mode 0' ('species_data.txt' output\\nfrom get_iucn_data function)."
    iucn_history: "File containing IUCN history of the reference group\\nfor transition rate estimation ('*_iucn_history.txt'\\noutput of get_iucn_data function)."
    outdir: "Provide path to outdir where results will be saved."
    extinction_probs_mode: "Set to '0' to use IUCN defined extinction\\nprobabilities (e.g. Mooers et al, 2008 approach), also\\nusing available GL data to estimate species-specific\\nextinction probabilities. Set to '1' to simulate\\nextinctions based on recorded extinctions in IUCN\\nhistory (e.g. Monroe et al, 2019 approach, no GL data\\nis being used)."
    possibly_extinct_list: "File containing list of taxa that are likely extinct,\\nbut that are listed as extant in IUCN, including the\\nyear of their assessment as possibly extinct\\n('possibly_extinct_reference_taxa.txt' output from\\nget_iucn_data function). These species will then be\\nmodeled as extinct by the esimate_rates function,\\nwhich will effect the estimated extinction\\nprobabilities when chosing `--extinction_probs_mode 1`"
    rate_samples: "How many rates to sample from the posterior transition\\nrate estimates. These rates will be used to populate\\ntransition rate q-matrices for downstream simulations.\\nLater on you can still chose to run more simulation\\nreplicates than the here specified number of produced\\ntransition rate q-matrices, in which case the\\n`run_sim` function will randomely resample from the\\navailable q-matrices (default=100, this is ususally\\nsufficient, larger numbers can lead to very high\\noutput file size volumes)."
    n_gen: "Number of generations for MCMC for transition rate\\nestimation (default=100000)."
    burnin: "Burn-in for MCMC for transition rate estimation\\n(default=1000)."
    seed: "Set random seed for the MCMC."
  }
  output {
    File out_stdout = stdout()
    File out_iucn_history = "${in_iucn_history}"
    File out_possibly_extinct_list = "${in_possibly_extinct_list}"
  }
}