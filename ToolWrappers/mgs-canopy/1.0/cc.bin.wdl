version 1.0

task Ccbin {
  input {
    Boolean? arg_path_input
    Boolean? argpath_file_clusters
    Boolean? argpath_file_cluster
    Boolean? arg_cagprefix_prepended
    Boolean? arg_important_number
    Int? max_canopy_dist
    Int? max_close_dist
    Int? max_merge_dist
    Int? min_step_dist
    Int? max_num_canopy_walks
    Int? filter_min_obs
    Float? filter_max_dominant_obs
    File? filtered_out_points_min_obs_file
    File? filtered_out_points_max_dominant_obs_file
    Int? filter_zero_medians
    Float? filter_single_point
    Float? stop_fraction
    Boolean? die_on_kill
    File? not_processed_points_file
    Boolean? print_wall_clock
    File? show_progress_bar
    File? canopy_size_stats_file
    String use_dot
  }
  command <<<
    cc_bin \
      ~{use_dot} \
      ~{if (arg_path_input) then "-i" else ""} \
      ~{if (argpath_file_clusters) then "-o" else ""} \
      ~{if (argpath_file_cluster) then "-c" else ""} \
      ~{if (arg_cagprefix_prepended) then "-p" else ""} \
      ~{if (arg_important_number) then "-n" else ""} \
      ~{if defined(max_canopy_dist) then ("--max_canopy_dist " +  '"' + max_canopy_dist + '"') else ""} \
      ~{if defined(max_close_dist) then ("--max_close_dist " +  '"' + max_close_dist + '"') else ""} \
      ~{if defined(max_merge_dist) then ("--max_merge_dist " +  '"' + max_merge_dist + '"') else ""} \
      ~{if defined(min_step_dist) then ("--min_step_dist " +  '"' + min_step_dist + '"') else ""} \
      ~{if defined(max_num_canopy_walks) then ("--max_num_canopy_walks " +  '"' + max_num_canopy_walks + '"') else ""} \
      ~{if defined(filter_min_obs) then ("--filter_min_obs " +  '"' + filter_min_obs + '"') else ""} \
      ~{if defined(filter_max_dominant_obs) then ("--filter_max_dominant_obs " +  '"' + filter_max_dominant_obs + '"') else ""} \
      ~{if defined(filtered_out_points_min_obs_file) then ("--filtered_out_points_min_obs_file " +  '"' + filtered_out_points_min_obs_file + '"') else ""} \
      ~{if defined(filtered_out_points_max_dominant_obs_file) then ("--filtered_out_points_max_dominant_obs_file " +  '"' + filtered_out_points_max_dominant_obs_file + '"') else ""} \
      ~{if defined(filter_zero_medians) then ("--filter_zero_medians " +  '"' + filter_zero_medians + '"') else ""} \
      ~{if defined(filter_single_point) then ("--filter_single_point " +  '"' + filter_single_point + '"') else ""} \
      ~{if defined(stop_fraction) then ("--stop_fraction " +  '"' + stop_fraction + '"') else ""} \
      ~{if (die_on_kill) then "--die_on_kill" else ""} \
      ~{if defined(not_processed_points_file) then ("--not_processed_points_file " +  '"' + not_processed_points_file + '"') else ""} \
      ~{if (print_wall_clock) then "-t" else ""} \
      ~{if (show_progress_bar) then "-b" else ""} \
      ~{if defined(canopy_size_stats_file) then ("--canopy_size_stats_file " +  '"' + canopy_size_stats_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arg_path_input: "[ --input_file_path ] arg          Path to the input file"
    argpath_file_clusters: "[ --output_clusters_file_path ] arg\\nPath to file to which clusters will be\\nwritten"
    argpath_file_cluster: "[ --output_cluster_profiles_file ] arg\\nPath to file to which cluster profiles\\nwill be written"
    arg_cagprefix_prepended: "[ --cluster_name_prefix ] arg (=CAG)\\nPrefix prepended to output cluster\\nnames"
    arg_important_number: "[ --num_threads ] arg (=4)         IMPORTANT! Number of cpu threads to"
    max_canopy_dist: "(=0.1)          Max pearson correlation difference\\nbetween a canopy center and a point\\nincluded to the canopy"
    max_close_dist: "(=0.4)           Max pearson correlation difference\\nbetween a canopy center and a point in\\nwhich the point will be considered\\nclose to the canopy. As a heuristc,\\nonly points within this distance will\\nbe considered as potential neighbours\\nduring the canopy walk."
    max_merge_dist: "(=0.05)          Max pearson correlation difference\\nbetween two canopy centers in which the\\ncanopies should be merged. Please note,\\nthat the final canopy profiles are\\ncalculated after the merge step and\\nconsequently some final canopies might\\nhave profiles that are closer then\\nmax_merge_dist specifies."
    min_step_dist: "(=0.01)           Min pearson correlation difference\\nbetween canopy center and canopy\\ncentroid in which the centroid will be\\nused as an origin for a new canpy\\n(canopy walk). This is a stop criterion\\nfor canopy walk."
    max_num_canopy_walks: "(=3)       Max number of times the canopy will\\nwalk. This is a stop criterion for\\ncanopy walk."
    filter_min_obs: "(=3)             Discard those points which have fewer\\nthan N non-zero data points\\n(observations). Setting it to 0 will\\ndisable the filter."
    filter_max_dominant_obs: "(=0.9)  Discard those points for which top 3\\ndata points constitute more than X\\nfraction of the total signal. Setting\\nit to 1 will disable the filter"
    filtered_out_points_min_obs_file: "File to which write out those files\\nthat didn't match the filter_min_obs\\nfilter"
    filtered_out_points_max_dominant_obs_file: "File to which write out those files\\nthat didn't match the\\nfilter_max_dominant_obs filter."
    filter_zero_medians: "(=3)        Return only those canopies that have at\\nleast N non-zero cluster profile\\nobservations. Setting it to 0 will\\ndisable the filter."
    filter_single_point: "(=0.9)      Don't return canopies containing a\\nsingle profile observation which\\nconstitutes to more than X fraction of\\nthe total profile. Setting it to 1\\ndisables the filter."
    stop_fraction: "(=1.0)            Stop clustering after X fraction of all\\npoints have been clustered. Setting it\\nto 1 will disable this stop criterion."
    die_on_kill: "If set, after receiving a KILL signal,\\nthe program will die and no results\\nwill be produced. By default clustering\\nwill stop but clusters will be merged\\nand partial results will be printed as\\nusual."
    not_processed_points_file: "Path to file to which unprocessed\\norigins will be dumped at KILL signal"
    print_wall_clock: "[ --print_time_statistics ]        Print wall clock time profiles of\\nvarious analysis parts. This is not\\naggressive and won't increase\\ncompuatation time."
    show_progress_bar: "[ --show_progress_bar ]            Show progress bar, nice if output is\\nprinted to console, don't use if you\\nare redirecting to a file. Verbosity\\nmust be set to at least PROGRESS for it\\nto have an effect."
    canopy_size_stats_file: "If set, to this file current progress\\nafter each processed origin will be\\ndumped in format <index>\\n<num_left_origins> <this_canopy_size>\\n<total_num_thread_collisions>"
    use_dot: "-v [ --verbosity ] arg (=info)        Control how much information should be "
  }
  output {
    File out_stdout = stdout()
    File out_filtered_out_points_min_obs_file = "${in_filtered_out_points_min_obs_file}"
    File out_filtered_out_points_max_dominant_obs_file = "${in_filtered_out_points_max_dominant_obs_file}"
    File out_show_progress_bar = "${in_show_progress_bar}"
  }
}