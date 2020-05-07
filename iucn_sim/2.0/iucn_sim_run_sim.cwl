class: CommandLineTool
id: iucn_sim_run_sim.cwl
inputs:
- id: input_data
  doc: Path to 'simulation_input_data.pkl' file created by esimate_rates function.
  type: string
  inputBinding:
    prefix: --input_data
- id: outdir
  doc: Provide path to outdir where results will be saved.
  type: string
  inputBinding:
    prefix: --outdir
- id: n_years
  doc: How many years to simulate into the future.
  type: string
  inputBinding:
    prefix: --n_years
- id: n_sim
  doc: How many simulation replicates to run. If the number of simulation replicates
    exceeds the number of available transition rate estimates (produced by the 'transition_rates'
    function), these rates will be randomely resampled for the remaining simulations.
  type: string
  inputBinding:
    prefix: --n_sim
- id: status_change
  doc: Model IUCN status changes in future simulations. 0=off, 1=on (default=1).
  type: string
  inputBinding:
    prefix: --status_change
- id: conservation_increase_factor
  doc: The transition rates leading to improvements in IUCN conservation status are
    multiplied by this factor.
  type: string
  inputBinding:
    prefix: --conservation_increase_factor
- id: threat_increase_factor
  doc: Opposite of conservation_increase_factor, multiplies the transition rates leading
    to worsening in IUCN conservation status.
  type: string
  inputBinding:
    prefix: --threat_increase_factor
- id: model_unknown_as_lc
  doc: Model new status for all DD and NE species as LC (best case scenario). 0=off,
    1=on (default=0).
  type: string
  inputBinding:
    prefix: --model_unknown_as_lc
- id: extinction_rates
  doc: 'Estimation of extinction rates from simulation results: 0=off, 1=on (default=1).'
  type: string
  inputBinding:
    prefix: --extinction_rates
- id: n_gen
  doc: Number of generations for MCMC for extinction rate estimation (default=100000).
  type: string
  inputBinding:
    prefix: --n_gen
- id: burnin
  doc: Burn-in for MCMC for extinction rate estimation (default=1000).
  type: string
  inputBinding:
    prefix: --burnin
- id: plot_diversity_trajectory
  doc: 'Plots the simulated diversity trajectory: 0=off, 1=on (default=1).'
  type: string
  inputBinding:
    prefix: --plot_diversity_trajectory
- id: plot_status_trajectories
  doc: 'Plots the simulated IUCN status trajectory: 0=off, 1=on (default=0).'
  type: string
  inputBinding:
    prefix: --plot_status_trajectories
- id: plot_histograms
  doc: 'Plots histograms of simulated extinction times for each species: 0=off, 1=on
    (default=0).'
  type: string
  inputBinding:
    prefix: --plot_histograms
- id: plot_posterior
  doc: 'Plots histograms of posterior rate estimates for each species: 0=off, 1=on
    (default=0).'
  type: string
  inputBinding:
    prefix: --plot_posterior
- id: plot_status_pie_chart
  doc: 'Plots pie charts of status distribution: 0=off, 1=on (default=1).'
  type: string
  inputBinding:
    prefix: --plot_status_piechart
- id: seed
  doc: Set random seed for future simulations.
  type: string
  inputBinding:
    prefix: --seed
outputs: []
cwlVersion: v1.1
baseCommand:
- iucn_sim
- run_sim
