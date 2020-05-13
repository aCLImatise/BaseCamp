version 1.0

task IucnSimRunSim {
  input {
    String inputInputData
    String outdirOutdir
    String nNYears
    String nNSim
    String statusStatusChange
    String conservationConservationIncreaseFactor
    String threatThreatIncreaseFactor
    String modelModelUnknownAsLc
    String extinctionExtinctionRates
    String nNGen
    String burninBurnin
    String plotPlotDiversityTrajectory
    String plotPlotStatusTrajectories
    String plotPlotHistograms
    String plotPlotPosterior
    String plotPlotStatusPieChart
    String seedSeed
  }
  command <<<
    iucn_sim run_sim \
      ~{if defined(inputInputData) then ("--input_data " +  '"' + inputInputData + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(nNYears) then ("--n_years " +  '"' + nNYears + '"') else ""} \
      ~{if defined(nNSim) then ("--n_sim " +  '"' + nNSim + '"') else ""} \
      ~{if defined(statusStatusChange) then ("--status_change " +  '"' + statusStatusChange + '"') else ""} \
      ~{if defined(conservationConservationIncreaseFactor) then ("--conservation_increase_factor " +  '"' + conservationConservationIncreaseFactor + '"') else ""} \
      ~{if defined(threatThreatIncreaseFactor) then ("--threat_increase_factor " +  '"' + threatThreatIncreaseFactor + '"') else ""} \
      ~{if defined(modelModelUnknownAsLc) then ("--model_unknown_as_lc " +  '"' + modelModelUnknownAsLc + '"') else ""} \
      ~{if defined(extinctionExtinctionRates) then ("--extinction_rates " +  '"' + extinctionExtinctionRates + '"') else ""} \
      ~{if defined(nNGen) then ("--n_gen " +  '"' + nNGen + '"') else ""} \
      ~{if defined(burninBurnin) then ("--burnin " +  '"' + burninBurnin + '"') else ""} \
      ~{if defined(plotPlotDiversityTrajectory) then ("--plot_diversity_trajectory " +  '"' + plotPlotDiversityTrajectory + '"') else ""} \
      ~{if defined(plotPlotStatusTrajectories) then ("--plot_status_trajectories " +  '"' + plotPlotStatusTrajectories + '"') else ""} \
      ~{if defined(plotPlotHistograms) then ("--plot_histograms " +  '"' + plotPlotHistograms + '"') else ""} \
      ~{if defined(plotPlotPosterior) then ("--plot_posterior " +  '"' + plotPlotPosterior + '"') else ""} \
      ~{if defined(plotPlotStatusPieChart) then ("--plot_status_piechart " +  '"' + plotPlotStatusPieChart + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""}
  >>>
}