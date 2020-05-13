class: CommandLineTool
id: cc.bin.cwl
inputs:
- id: i
  doc: '[ --input_file_path ] arg          Path to the input file'
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: '[ --output_clusters_file_path ] arg Path to file to which clusters will be  written'
  type: boolean
  inputBinding:
    prefix: -o
- id: c
  doc: '[ --output_cluster_profiles_file ] arg Path to file to which cluster profiles  will
    be written'
  type: boolean
  inputBinding:
    prefix: -c
- id: p
  doc: '[ --cluster_name_prefix ] arg (=CAG) Prefix prepended to output cluster  names'
  type: boolean
  inputBinding:
    prefix: -p
- id: n
  doc: '[ --num_threads ] arg (=4)         IMPORTANT! Number of cpu threads to  use.'
  type: boolean
  inputBinding:
    prefix: -n
- id: v
  doc: '[ --verbosity ] arg (=info)        Control how much information should be  printed
    to the screen. Available levels according to their verbosity: error,  progress,
    warn, info, debug, debug1.'
  type: boolean
  inputBinding:
    prefix: -v
- id: max_canopy_dist
  doc: (=0.1)          Max pearson correlation difference  between a canopy center
    and a point  included to the canopy
  type: string
  inputBinding:
    prefix: --max_canopy_dist
- id: max_close_dist
  doc: (=0.4)           Max pearson correlation difference  between a canopy center
    and a point in  which the point will be considered  close to the canopy. As a
    heuristc,  only points within this distance will  be considered as potential neighbours  during
    the canopy walk.
  type: string
  inputBinding:
    prefix: --max_close_dist
- id: max_merge_dist
  doc: (=0.05)          Max pearson correlation difference  between two canopy centers
    in which the canopies should be merged. Please note, that the final canopy profiles
    are  calculated after the merge step and  consequently some final canopies might  have
    profiles that are closer then  max_merge_dist specifies.
  type: string
  inputBinding:
    prefix: --max_merge_dist
- id: min_step_dist
  doc: (=0.01)           Min pearson correlation difference  between canopy center
    and canopy  centroid in which the centroid will be  used as an origin for a new
    canpy  (canopy walk). This is a stop criterion for canopy walk.
  type: string
  inputBinding:
    prefix: --min_step_dist
- id: max_num_canopy_walks
  doc: (=3)       Max number of times the canopy will  walk. This is a stop criterion
    for  canopy walk.
  type: string
  inputBinding:
    prefix: --max_num_canopy_walks
- id: filter_min_obs
  doc: (=3)             Discard those points which have fewer  than N non-zero data
    points  (observations). Setting it to 0 will  disable the filter.
  type: string
  inputBinding:
    prefix: --filter_min_obs
- id: filter_max_dominant_obs
  doc: (=0.9)  Discard those points for which top 3  data points constitute more than
    X  fraction of the total signal. Setting  it to 1 will disable the filter
  type: string
  inputBinding:
    prefix: --filter_max_dominant_obs
- id: filtered_out_points_min_obs_file
  doc: File to which write out those files  that didn't match the filter_min_obs  filter
  type: string
  inputBinding:
    prefix: --filtered_out_points_min_obs_file
- id: filtered_out_points_max_dominant_obs_file
  doc: File to which write out those files  that didn't match the  filter_max_dominant_obs
    filter.
  type: string
  inputBinding:
    prefix: --filtered_out_points_max_dominant_obs_file
- id: filter_zero_medians
  doc: (=3)        Return only those canopies that have at least N non-zero cluster
    profile  observations. Setting it to 0 will  disable the filter.
  type: string
  inputBinding:
    prefix: --filter_zero_medians
- id: filter_single_point
  doc: (=0.9)      Don't return canopies containing a  single profile observation
    which  constitutes to more than X fraction of  the total profile. Setting it to
    1  disables the filter.
  type: string
  inputBinding:
    prefix: --filter_single_point
- id: stop_fraction
  doc: (=1.0)            Stop clustering after X fraction of all points have been
    clustered. Setting it  to 1 will disable this stop criterion.
  type: string
  inputBinding:
    prefix: --stop_fraction
- id: die_on_kill
  doc: If set, after receiving a KILL signal,  the program will die and no results  will
    be produced. By default clustering will stop but clusters will be merged  and
    partial results will be printed as  usual.
  type: boolean
  inputBinding:
    prefix: --die_on_kill
- id: not_processed_points_file
  doc: Path to file to which unprocessed  origins will be dumped at KILL signal
  type: string
  inputBinding:
    prefix: --not_processed_points_file
- id: t
  doc: "[ --print_time_statistics ]        Print wall clock time profiles of  various\
    \ analysis parts. This is not  aggressive and won't increase  compuatation time."
  type: boolean
  inputBinding:
    prefix: -t
- id: b
  doc: "[ --show_progress_bar ]            Show progress bar, nice if output is  printed\
    \ to console, don't use if you  are redirecting to a file. Verbosity  must be\
    \ set to at least PROGRESS for it to have an effect."
  type: boolean
  inputBinding:
    prefix: -b
- id: canopy_size_stats_file
  doc: If set, to this file current progress  after each processed origin will be  dumped
    in format <index>  <num_left_origins> <this_canopy_size>  <total_num_thread_collisions>
  type: string
  inputBinding:
    prefix: --canopy_size_stats_file
outputs: []
cwlVersion: v1.1
baseCommand:
- cc.bin
