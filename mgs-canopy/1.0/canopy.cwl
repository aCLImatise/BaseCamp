#!/usr/bin/env cwl-runner

baseCommand:
- canopy
class: CommandLineTool
cwlVersion: v1.0
id: canopy
inputs:
- doc: '[ --input_file_path ] arg          Path to the input file'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: '[ --output_clusters_file_path ] arg Path to file to which clusters will be  written'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '[ --output_cluster_profiles_file ] arg Path to file to which cluster profiles  will
    be written'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: '[ --cluster_name_prefix ] arg (=CAG) Prefix prepended to output cluster  names'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: '[ --num_threads ] arg (=4)         IMPORTANT! Number of cpu threads to  use.'
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: '[ --verbosity ] arg (=info)        Control how much information should be  printed
    to the screen. Available levels according to their verbosity: error,  progress,
    warn, info, debug, debug1.'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: (=0.1)          Max pearson correlation difference  between a canopy center
    and a point  included to the canopy
  id: max_canopy_dist
  inputBinding:
    prefix: --max_canopy_dist
  type: string
- doc: (=0.4)           Max pearson correlation difference  between a canopy center
    and a point in  which the point will be considered  close to the canopy. As a
    heuristc,  only points within this distance will  be considered as potential neighbours  during
    the canopy walk.
  id: max_close_dist
  inputBinding:
    prefix: --max_close_dist
  type: string
- doc: (=0.05)          Max pearson correlation difference  between two canopy centers
    in which the canopies should be merged. Please note, that the final canopy profiles
    are  calculated after the merge step and  consequently some final canopies might  have
    profiles that are closer then  max_merge_dist specifies.
  id: max_merge_dist
  inputBinding:
    prefix: --max_merge_dist
  type: string
- doc: (=0.01)           Min pearson correlation difference  between canopy center
    and canopy  centroid in which the centroid will be  used as an origin for a new
    canpy  (canopy walk). This is a stop criterion for canopy walk.
  id: min_step_dist
  inputBinding:
    prefix: --min_step_dist
  type: string
- doc: (=3)       Max number of times the canopy will  walk. This is a stop criterion
    for  canopy walk.
  id: max_num_canopy_walks
  inputBinding:
    prefix: --max_num_canopy_walks
  type: string
- doc: (=3)             Discard those points which have fewer  than N non-zero data
    points  (observations). Setting it to 0 will  disable the filter.
  id: filter_min_obs
  inputBinding:
    prefix: --filter_min_obs
  type: string
- doc: (=0.9)  Discard those points for which top 3  data points constitute more than
    X  fraction of the total signal. Setting  it to 1 will disable the filter
  id: filter_max_dominant_obs
  inputBinding:
    prefix: --filter_max_dominant_obs
  type: string
- doc: File to which write out those files  that didn't match the filter_min_obs  filter
  id: filtered_out_points_min_obs_file
  inputBinding:
    prefix: --filtered_out_points_min_obs_file
  type: string
- doc: File to which write out those files  that didn't match the  filter_max_dominant_obs
    filter.
  id: filtered_out_points_max_dominant_obs_file
  inputBinding:
    prefix: --filtered_out_points_max_dominant_obs_file
  type: string
- doc: (=3)        Return only those canopies that have at least N non-zero cluster
    profile  observations. Setting it to 0 will  disable the filter.
  id: filter_zero_medians
  inputBinding:
    prefix: --filter_zero_medians
  type: string
- doc: (=0.9)      Don't return canopies containing a  single profile observation
    which  constitutes to more than X fraction of  the total profile. Setting it to
    1  disables the filter.
  id: filter_single_point
  inputBinding:
    prefix: --filter_single_point
  type: string
- doc: (=1.0)            Stop clustering after X fraction of all points have been
    clustered. Setting it  to 1 will disable this stop criterion.
  id: stop_fraction
  inputBinding:
    prefix: --stop_fraction
  type: string
- doc: If set, after receiving a KILL signal,  the program will die and no results  will
    be produced. By default clustering will stop but clusters will be merged  and
    partial results will be printed as  usual.
  id: die_on_kill
  inputBinding:
    prefix: --die_on_kill
  type: boolean
- doc: Path to file to which unprocessed  origins will be dumped at KILL signal
  id: not_processed_points_file
  inputBinding:
    prefix: --not_processed_points_file
  type: string
- doc: "[ --print_time_statistics ]        Print wall clock time profiles of  various\
    \ analysis parts. This is not  aggressive and won't increase  compuatation time."
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: "[ --show_progress_bar ]            Show progress bar, nice if output is  printed\
    \ to console, don't use if you  are redirecting to a file. Verbosity  must be\
    \ set to at least PROGRESS for it to have an effect."
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: If set, to this file current progress  after each processed origin will be  dumped
    in format <index>  <num_left_origins> <this_canopy_size>  <total_num_thread_collisions>
  id: canopy_size_stats_file
  inputBinding:
    prefix: --canopy_size_stats_file
  type: string
