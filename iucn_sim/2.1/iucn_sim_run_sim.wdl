version 1.0

task IucnSimRunSim {
  input {
    String? input_data
    String? outdir
    String? n_years
    String? n_sim
    String? status_change
    String? conservation_increase_factor
    String? threat_increase_factor
    String? model_unknown_as_lc
    String? extinction_rates
    String? n_gen
    String? burnin
    String? plot_diversity_trajectory
    String? plot_status_trajectories
    String? plot_histograms
    String? plot_posterior
    String? plot_status_pie_chart
    String? seed
  }
  command <<<
    iucn_sim run_sim \
      ~{if defined(input_data) then ("--input_data " +  '"' + input_data + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(n_years) then ("--n_years " +  '"' + n_years + '"') else ""} \
      ~{if defined(n_sim) then ("--n_sim " +  '"' + n_sim + '"') else ""} \
      ~{if defined(status_change) then ("--status_change " +  '"' + status_change + '"') else ""} \
      ~{if defined(conservation_increase_factor) then ("--conservation_increase_factor " +  '"' + conservation_increase_factor + '"') else ""} \
      ~{if defined(threat_increase_factor) then ("--threat_increase_factor " +  '"' + threat_increase_factor + '"') else ""} \
      ~{if defined(model_unknown_as_lc) then ("--model_unknown_as_lc " +  '"' + model_unknown_as_lc + '"') else ""} \
      ~{if defined(extinction_rates) then ("--extinction_rates " +  '"' + extinction_rates + '"') else ""} \
      ~{if defined(n_gen) then ("--n_gen " +  '"' + n_gen + '"') else ""} \
      ~{if defined(burnin) then ("--burnin " +  '"' + burnin + '"') else ""} \
      ~{if defined(plot_diversity_trajectory) then ("--plot_diversity_trajectory " +  '"' + plot_diversity_trajectory + '"') else ""} \
      ~{if defined(plot_status_trajectories) then ("--plot_status_trajectories " +  '"' + plot_status_trajectories + '"') else ""} \
      ~{if defined(plot_histograms) then ("--plot_histograms " +  '"' + plot_histograms + '"') else ""} \
      ~{if defined(plot_posterior) then ("--plot_posterior " +  '"' + plot_posterior + '"') else ""} \
      ~{if defined(plot_status_pie_chart) then ("--plot_status_piechart " +  '"' + plot_status_pie_chart + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  parameter_meta {
    input_data: "Path to 'simulation_input_data.pkl' file created by esimate_rates function."
    outdir: "Provide path to outdir where results will be saved."
    n_years: "How many years to simulate into the future."
    n_sim: "How many simulation replicates to run. If the number of simulation replicates exceeds the number of available transition rate estimates (produced by the 'transition_rates' function), these rates will be randomely resampled for the remaining simulations."
    status_change: "Model IUCN status changes in future simulations. 0=off, 1=on (default=1)."
    conservation_increase_factor: "The transition rates leading to improvements in IUCN conservation status are multiplied by this factor."
    threat_increase_factor: "Opposite of conservation_increase_factor, multiplies the transition rates leading to worsening in IUCN conservation status."
    model_unknown_as_lc: "Model new status for all DD and NE species as LC (best case scenario). 0=off, 1=on (default=0)."
    extinction_rates: "Estimation of extinction rates from simulation results: 0=off, 1=on (default=1)."
    n_gen: "Number of generations for MCMC for extinction rate estimation (default=100000)."
    burnin: "Burn-in for MCMC for extinction rate estimation (default=1000)."
    plot_diversity_trajectory: "Plots the simulated diversity trajectory: 0=off, 1=on (default=1)."
    plot_status_trajectories: "Plots the simulated IUCN status trajectory: 0=off, 1=on (default=0)."
    plot_histograms: "Plots histograms of simulated extinction times for each species: 0=off, 1=on (default=0)."
    plot_posterior: "Plots histograms of posterior rate estimates for each species: 0=off, 1=on (default=0)."
    plot_status_pie_chart: "Plots pie charts of status distribution: 0=off, 1=on (default=1)."
    seed: "Set random seed for future simulations."
  }
}