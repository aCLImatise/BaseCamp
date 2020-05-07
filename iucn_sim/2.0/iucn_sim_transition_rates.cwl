class: CommandLineTool
id: iucn_sim_transition_rates.cwl
inputs:
- id: species_data
  doc: File containing species list and current IUCN status of species, as well as
    generation length (GL) data estimates if available. GL data is only used for '--
    extinction_probs_mode 0' ('species_data.txt' output from get_iucn_data function).
  type: File
  inputBinding:
    prefix: --species_data
- id: iucn_history
  doc: File containing IUCN history of the reference group for transition rate estimation
    ('*_iucn_history.txt' output of get_iucn_data function).
  type: File
  inputBinding:
    prefix: --iucn_history
- id: outdir
  doc: Provide path to outdir where results will be saved.
  type: File
  inputBinding:
    prefix: --outdir
- id: extinction_probs_mode
  doc: Set to '0' to use IUCN defined extinction probabilities (e.g. Mooers et al,
    2008 approach), also using available GL data to estimate species-specific extinction
    probabilities. Set to '1' to simulate extinctions based on recorded extinctions
    in IUCN history (e.g. Monroe et al, 2019 approach, no GL data is being used).
  type: string
  inputBinding:
    prefix: --extinction_probs_mode
- id: possibly_extinct_list
  doc: File containing list of taxa that are likely extinct, but that are listed as
    extant in IUCN, including the year of their assessment as possibly extinct ('possibly_extinct_reference_taxa.txt'
    output from get_iucn_data function). These species will then be modeled as extinct
    by the esimate_rates function, which will effect the estimated extinction probabilities
    when chosing `--extinction_probs_mode 1`
  type: File
  inputBinding:
    prefix: --possibly_extinct_list
- id: rate_samples
  doc: How many rates to sample from the posterior transition rate estimates. These
    rates will be used to populate transition rate q-matrices for downstream simulations.
    Later on you can still chose to run more simulation replicates than the here specified
    number of produced transition rate q-matrices, in which case the `run_sim` function
    will randomely resample from the available q-matrices (default=100, this is ususally
    sufficient, larger numbers can lead to very high output file size volumes).
  type: string
  inputBinding:
    prefix: --rate_samples
- id: n_gen
  doc: Number of generations for MCMC for transition rate estimation (default=100000).
  type: string
  inputBinding:
    prefix: --n_gen
- id: burnin
  doc: Burn-in for MCMC for transition rate estimation (default=1000).
  type: string
  inputBinding:
    prefix: --burnin
- id: seed
  doc: Set random seed for the MCMC.
  type: string
  inputBinding:
    prefix: --seed
outputs: []
cwlVersion: v1.1
baseCommand:
- iucn_sim
- transition_rates
