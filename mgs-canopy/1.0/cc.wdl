version 1.0

task Cc.bin {
  input {
    Boolean iI
    Boolean oO
    Boolean cC
    Boolean pP
    Boolean nN
    Boolean vV
    String maxMaxCanopyDist
    String maxMaxCloseDist
    String maxMaxMergeDist
    String minMinStepDist
    String maxMaxNumCanopyWalks
    String filterFilterMinObs
    String filterFilterMaxDominantObs
    String filteredFilteredOutPointsMinObsFile
    String filteredFilteredOutPointsMaxDominantObsFile
    String filterFilterZeroMedians
    String filterFilterSinglePoint
    String stopStopFraction
    Boolean dieDieOnKill
    String notNotProcessedPointsFile
    Boolean tT
    Boolean bB
    String canopyCanopySizeStatsFile
  }
  command <<<
    cc.bin \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="-c" false="" cC} \
      ~{true="-p" false="" pP} \
      ~{true="-n" false="" nN} \
      ~{true="-v" false="" vV} \
      ~{if defined(maxMaxCanopyDist) then ("--max_canopy_dist " +  '"' + maxMaxCanopyDist + '"') else ""} \
      ~{if defined(maxMaxCloseDist) then ("--max_close_dist " +  '"' + maxMaxCloseDist + '"') else ""} \
      ~{if defined(maxMaxMergeDist) then ("--max_merge_dist " +  '"' + maxMaxMergeDist + '"') else ""} \
      ~{if defined(minMinStepDist) then ("--min_step_dist " +  '"' + minMinStepDist + '"') else ""} \
      ~{if defined(maxMaxNumCanopyWalks) then ("--max_num_canopy_walks " +  '"' + maxMaxNumCanopyWalks + '"') else ""} \
      ~{if defined(filterFilterMinObs) then ("--filter_min_obs " +  '"' + filterFilterMinObs + '"') else ""} \
      ~{if defined(filterFilterMaxDominantObs) then ("--filter_max_dominant_obs " +  '"' + filterFilterMaxDominantObs + '"') else ""} \
      ~{if defined(filteredFilteredOutPointsMinObsFile) then ("--filtered_out_points_min_obs_file " +  '"' + filteredFilteredOutPointsMinObsFile + '"') else ""} \
      ~{if defined(filteredFilteredOutPointsMaxDominantObsFile) then ("--filtered_out_points_max_dominant_obs_file " +  '"' + filteredFilteredOutPointsMaxDominantObsFile + '"') else ""} \
      ~{if defined(filterFilterZeroMedians) then ("--filter_zero_medians " +  '"' + filterFilterZeroMedians + '"') else ""} \
      ~{if defined(filterFilterSinglePoint) then ("--filter_single_point " +  '"' + filterFilterSinglePoint + '"') else ""} \
      ~{if defined(stopStopFraction) then ("--stop_fraction " +  '"' + stopStopFraction + '"') else ""} \
      ~{true="--die_on_kill" false="" dieDieOnKill} \
      ~{if defined(notNotProcessedPointsFile) then ("--not_processed_points_file " +  '"' + notNotProcessedPointsFile + '"') else ""} \
      ~{true="-t" false="" tT} \
      ~{true="-b" false="" bB} \
      ~{if defined(canopyCanopySizeStatsFile) then ("--canopy_size_stats_file " +  '"' + canopyCanopySizeStatsFile + '"') else ""}
  >>>
}