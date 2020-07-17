version 1.0

task Canopy {
  input {
    Boolean? arg_path_input
    Boolean? arg_path_clusters
    Boolean? arg_path_cluster
    Boolean? arg_cag_prefix
    Boolean? arg_important_number
    Boolean? arg_info_control
    String? max_canopy_dist
    String? max_close_dist
    String? max_merge_dist
    String? min_step_dist
    String? max_num_canopy_walks
    String? filter_min_obs
    String? filter_max_dominant_obs
    String? filtered_out_points_min_obs_file
    String? filtered_out_points_max_dominant_obs_file
    String? filter_zero_medians
    String? filter_single_point
    String? stop_fraction
    Boolean? die_on_kill
    String? not_processed_points_file
    Boolean? print_wall_clock
    Boolean? show_progress_bar
    String? canopy_size_stats_file
  }
  command <<<
    canopy \
      ~{true="-i" false="" arg_path_input} \
      ~{true="-o" false="" arg_path_clusters} \
      ~{true="-c" false="" arg_path_cluster} \
      ~{true="-p" false="" arg_cag_prefix} \
      ~{true="-n" false="" arg_important_number} \
      ~{true="-v" false="" arg_info_control} \
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
      ~{true="--die_on_kill" false="" die_on_kill} \
      ~{if defined(not_processed_points_file) then ("--not_processed_points_file " +  '"' + not_processed_points_file + '"') else ""} \
      ~{true="-t" false="" print_wall_clock} \
      ~{true="-b" false="" show_progress_bar} \
      ~{if defined(canopy_size_stats_file) then ("--canopy_size_stats_file " +  '"' + canopy_size_stats_file + '"') else ""}
  >>>
  parameter_meta {
    arg_path_input: "[ --input_file_path ] arg          Path to the input file"
    arg_path_clusters: "[ --output_clusters_file_path ] arg Path to file to which clusters will be  written"
    arg_path_cluster: "[ --output_cluster_profiles_file ] arg Path to file to which cluster profiles  will be written"
    arg_cag_prefix: "[ --cluster_name_prefix ] arg (=CAG) Prefix prepended to output cluster  names"
    arg_important_number: "[ --num_threads ] arg (=4)         IMPORTANT! Number of cpu threads to  use."
    arg_info_control: "[ --verbosity ] arg (=info)        Control how much information should be  printed to the screen. Available levels according to their verbosity: error,  progress, warn, info, debug, debug1."
    max_canopy_dist: "(=0.1)          Max pearson correlation difference  between a canopy center and a point  included to the canopy"
    max_close_dist: "(=0.4)           Max pearson correlation difference  between a canopy center and a point in  which the point will be considered  close to the canopy. As a heuristc,  only points within this distance will  be considered as potential neighbours  during the canopy walk."
    max_merge_dist: "(=0.05)          Max pearson correlation difference  between two canopy centers in which the canopies should be merged. Please note, that the final canopy profiles are  calculated after the merge step and  consequently some final canopies might  have profiles that are closer then  max_merge_dist specifies."
    min_step_dist: "(=0.01)           Min pearson correlation difference  between canopy center and canopy  centroid in which the centroid will be  used as an origin for a new canpy  (canopy walk). This is a stop criterion for canopy walk."
    max_num_canopy_walks: "(=3)       Max number of times the canopy will  walk. This is a stop criterion for  canopy walk."
    filter_min_obs: "(=3)             Discard those points which have fewer  than N non-zero data points  (observations). Setting it to 0 will  disable the filter."
    filter_max_dominant_obs: "(=0.9)  Discard those points for which top 3  data points constitute more than X  fraction of the total signal. Setting  it to 1 will disable the filter"
    filtered_out_points_min_obs_file: "File to which write out those files  that didn't match the filter_min_obs  filter"
    filtered_out_points_max_dominant_obs_file: "File to which write out those files  that didn't match the  filter_max_dominant_obs filter."
    filter_zero_medians: "(=3)        Return only those canopies that have at least N non-zero cluster profile  observations. Setting it to 0 will  disable the filter."
    filter_single_point: "(=0.9)      Don't return canopies containing a  single profile observation which  constitutes to more than X fraction of  the total profile. Setting it to 1  disables the filter."
    stop_fraction: "(=1.0)            Stop clustering after X fraction of all points have been clustered. Setting it  to 1 will disable this stop criterion."
    die_on_kill: "If set, after receiving a KILL signal,  the program will die and no results  will be produced. By default clustering will stop but clusters will be merged  and partial results will be printed as  usual."
    not_processed_points_file: "Path to file to which unprocessed  origins will be dumped at KILL signal"
    print_wall_clock: "[ --print_time_statistics ]        Print wall clock time profiles of  various analysis parts. This is not  aggressive and won't increase  compuatation time."
    show_progress_bar: "[ --show_progress_bar ]            Show progress bar, nice if output is  printed to console, don't use if you  are redirecting to a file. Verbosity  must be set to at least PROGRESS for it to have an effect."
    canopy_size_stats_file: "If set, to this file current progress  after each processed origin will be  dumped in format <index>  <num_left_origins> <this_canopy_size>  <total_num_thread_collisions>"
  }
}