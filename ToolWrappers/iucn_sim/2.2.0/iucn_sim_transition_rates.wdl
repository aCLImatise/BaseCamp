version 1.0

task IucnSimTransitionRates {
  input {
    File? species_data
    File? iucn_history
    File? outdir
    Int? extinction_probs_mode
    File? possibly_extinct_list
    Boolean? species_specific_regression
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
      ~{if (species_specific_regression) then "--species_specific_regression" else ""} \
      ~{if defined(rate_samples) then ("--rate_samples " +  '"' + rate_samples + '"') else ""} \
      ~{if defined(n_gen) then ("--n_gen " +  '"' + n_gen + '"') else ""} \
      ~{if defined(burnin) then ("--burnin " +  '"' + burnin + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/iucn_sim:2.2.0--pyr40_0"
  }
  parameter_meta {
    species_data: "File containing species list and current IUCN status\\nof species, as well as generation length (GL) data\\nestimates if available. GL data is only used for '--\\nextinction_probs_mode 0' ('species_data.txt' output\\nfrom get_iucn_data function)."
    iucn_history: "File containing IUCN history of the reference group\\nfor transition rate estimation ('*_iucn_history.txt'\\noutput of get_iucn_data function)."
    outdir: "Provide path to outdir where results will be saved."
    extinction_probs_mode: "Set to '0' to use the critE EX mode to determine\\nextinction probabilities for each status (e.g. Mooers\\net al, 2008 approach). Set to '1' to use empirical EX\\nmode, based on the recorded extinction in the IUCN\\nhistory of the reference group (e.g. Monroe et al,\\n2019 approach). GL data can only be used in the critE\\nEX mode ('0')."
    possibly_extinct_list: "File containing list of taxa that are likely extinct,\\nbut that are listed as extant in IUCN, including the\\nyear of their assessment as possibly extinct\\n('possibly_extinct_reference_taxa.txt' output from\\nget_iucn_data function). These species will then be\\nmodeled as extinct by the esimate_rates function,\\nwhich will effect the estimated extinction\\nprobabilities when chosing `--extinction_probs_mode 1`"
    species_specific_regression: "Enables species-specific regression fitting to model\\nLC, NT, and VU extinction probabilities. Only\\napplicable with --extinction_probs_mode 0 (critE mode)\\nand if GL is provided."
    rate_samples: "How many rates to sample from the posterior transition\\nrate estimates. These rates will be used to populate\\ntransition rate q-matrices for downstream simulations.\\nLater on you can still chose to run more simulation\\nreplicates than the here specified number of produced\\ntransition rate q-matrices, in which case the\\n`run_sim` function will randomely resample from the\\navailable q-matrices (default=100, this is ususally\\nsufficient, larger numbers can lead to very high\\noutput file size volumes)."
    n_gen: "Number of generations for MCMC for transition rate\\nestimation (default=100000)."
    burnin: "Burn-in for MCMC for transition rate estimation\\n(default=1000)."
    seed: "Set starting seed for the MCMC."
  }
  output {
    File out_stdout = stdout()
    File out_iucn_history = "${in_iucn_history}"
    File out_possibly_extinct_list = "${in_possibly_extinct_list}"
  }
}