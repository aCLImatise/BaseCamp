class: CommandLineTool
id: iucn_sim_transition_rates.cwl
inputs:
- id: in_species_data
  doc: "File containing species list and current IUCN status\nof species, as well\
    \ as generation length (GL) data\nestimates if available. GL data is only used\
    \ for '--\nextinction_probs_mode 0' ('species_data.txt' output\nfrom get_iucn_data\
    \ function)."
  type: File?
  inputBinding:
    prefix: --species_data
- id: in_iucn_history
  doc: "File containing IUCN history of the reference group\nfor transition rate estimation\
    \ ('*_iucn_history.txt'\noutput of get_iucn_data function)."
  type: File?
  inputBinding:
    prefix: --iucn_history
- id: in_outdir
  doc: Provide path to outdir where results will be saved.
  type: File?
  inputBinding:
    prefix: --outdir
- id: in_extinction_probs_mode
  doc: "Set to '0' to use IUCN defined extinction\nprobabilities (e.g. Mooers et al,\
    \ 2008 approach), also\nusing available GL data to estimate species-specific\n\
    extinction probabilities. Set to '1' to simulate\nextinctions based on recorded\
    \ extinctions in IUCN\nhistory (e.g. Monroe et al, 2019 approach, no GL data\n\
    is being used)."
  type: long?
  inputBinding:
    prefix: --extinction_probs_mode
- id: in_possibly_extinct_list
  doc: "File containing list of taxa that are likely extinct,\nbut that are listed\
    \ as extant in IUCN, including the\nyear of their assessment as possibly extinct\n\
    ('possibly_extinct_reference_taxa.txt' output from\nget_iucn_data function). These\
    \ species will then be\nmodeled as extinct by the esimate_rates function,\nwhich\
    \ will effect the estimated extinction\nprobabilities when chosing `--extinction_probs_mode\
    \ 1`"
  type: File?
  inputBinding:
    prefix: --possibly_extinct_list
- id: in_rate_samples
  doc: "How many rates to sample from the posterior transition\nrate estimates. These\
    \ rates will be used to populate\ntransition rate q-matrices for downstream simulations.\n\
    Later on you can still chose to run more simulation\nreplicates than the here\
    \ specified number of produced\ntransition rate q-matrices, in which case the\n\
    `run_sim` function will randomely resample from the\navailable q-matrices (default=100,\
    \ this is ususally\nsufficient, larger numbers can lead to very high\noutput file\
    \ size volumes)."
  type: long?
  inputBinding:
    prefix: --rate_samples
- id: in_n_gen
  doc: "Number of generations for MCMC for transition rate\nestimation (default=100000)."
  type: long?
  inputBinding:
    prefix: --n_gen
- id: in_burnin
  doc: "Burn-in for MCMC for transition rate estimation\n(default=1000)."
  type: long?
  inputBinding:
    prefix: --burnin
- id: in_seed
  doc: Set random seed for the MCMC.
  type: string?
  inputBinding:
    prefix: --seed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_iucn_history
  doc: "File containing IUCN history of the reference group\nfor transition rate estimation\
    \ ('*_iucn_history.txt'\noutput of get_iucn_data function)."
  type: File?
  outputBinding:
    glob: $(inputs.in_iucn_history)
- id: out_possibly_extinct_list
  doc: "File containing list of taxa that are likely extinct,\nbut that are listed\
    \ as extant in IUCN, including the\nyear of their assessment as possibly extinct\n\
    ('possibly_extinct_reference_taxa.txt' output from\nget_iucn_data function). These\
    \ species will then be\nmodeled as extinct by the esimate_rates function,\nwhich\
    \ will effect the estimated extinction\nprobabilities when chosing `--extinction_probs_mode\
    \ 1`"
  type: File?
  outputBinding:
    glob: $(inputs.in_possibly_extinct_list)
hints: []
cwlVersion: v1.1
baseCommand:
- iucn_sim
- transition_rates
