class: CommandLineTool
id: cc.bin.cwl
inputs:
- id: in_arg_path_input
  doc: '[ --input_file_path ] arg          Path to the input file'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_argpath_file_clusters
  doc: "[ --output_clusters_file_path ] arg\nPath to file to which clusters will be\n\
    written"
  type: boolean
  inputBinding:
    prefix: -o
- id: in_argpath_file_cluster
  doc: "[ --output_cluster_profiles_file ] arg\nPath to file to which cluster profiles\n\
    will be written"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_arg_cagprefix_prepended
  doc: "[ --cluster_name_prefix ] arg (=CAG)\nPrefix prepended to output cluster\n\
    names"
  type: boolean
  inputBinding:
    prefix: -p
- id: in_arg_important_number
  doc: '[ --num_threads ] arg (=4)         IMPORTANT! Number of cpu threads to'
  type: boolean
  inputBinding:
    prefix: -n
- id: in_max_canopy_dist
  doc: "(=0.1)          Max pearson correlation difference\nbetween a canopy center\
    \ and a point\nincluded to the canopy"
  type: long
  inputBinding:
    prefix: --max_canopy_dist
- id: in_max_close_dist
  doc: "(=0.4)           Max pearson correlation difference\nbetween a canopy center\
    \ and a point in\nwhich the point will be considered\nclose to the canopy. As\
    \ a heuristc,\nonly points within this distance will\nbe considered as potential\
    \ neighbours\nduring the canopy walk."
  type: long
  inputBinding:
    prefix: --max_close_dist
- id: in_max_merge_dist
  doc: "(=0.05)          Max pearson correlation difference\nbetween two canopy centers\
    \ in which the\ncanopies should be merged. Please note,\nthat the final canopy\
    \ profiles are\ncalculated after the merge step and\nconsequently some final canopies\
    \ might\nhave profiles that are closer then\nmax_merge_dist specifies."
  type: long
  inputBinding:
    prefix: --max_merge_dist
- id: in_min_step_dist
  doc: "(=0.01)           Min pearson correlation difference\nbetween canopy center\
    \ and canopy\ncentroid in which the centroid will be\nused as an origin for a\
    \ new canpy\n(canopy walk). This is a stop criterion\nfor canopy walk."
  type: long
  inputBinding:
    prefix: --min_step_dist
- id: in_max_num_canopy_walks
  doc: "(=3)       Max number of times the canopy will\nwalk. This is a stop criterion\
    \ for\ncanopy walk."
  type: long
  inputBinding:
    prefix: --max_num_canopy_walks
- id: in_filter_min_obs
  doc: "(=3)             Discard those points which have fewer\nthan N non-zero data\
    \ points\n(observations). Setting it to 0 will\ndisable the filter."
  type: long
  inputBinding:
    prefix: --filter_min_obs
- id: in_filter_max_dominant_obs
  doc: "(=0.9)  Discard those points for which top 3\ndata points constitute more\
    \ than X\nfraction of the total signal. Setting\nit to 1 will disable the filter"
  type: double
  inputBinding:
    prefix: --filter_max_dominant_obs
- id: in_filtered_out_points_min_obs_file
  doc: "File to which write out those files\nthat didn't match the filter_min_obs\n\
    filter"
  type: File
  inputBinding:
    prefix: --filtered_out_points_min_obs_file
- id: in_filtered_out_points_max_dominant_obs_file
  doc: "File to which write out those files\nthat didn't match the\nfilter_max_dominant_obs\
    \ filter."
  type: File
  inputBinding:
    prefix: --filtered_out_points_max_dominant_obs_file
- id: in_filter_zero_medians
  doc: "(=3)        Return only those canopies that have at\nleast N non-zero cluster\
    \ profile\nobservations. Setting it to 0 will\ndisable the filter."
  type: long
  inputBinding:
    prefix: --filter_zero_medians
- id: in_filter_single_point
  doc: "(=0.9)      Don't return canopies containing a\nsingle profile observation\
    \ which\nconstitutes to more than X fraction of\nthe total profile. Setting it\
    \ to 1\ndisables the filter."
  type: double
  inputBinding:
    prefix: --filter_single_point
- id: in_stop_fraction
  doc: "(=1.0)            Stop clustering after X fraction of all\npoints have been\
    \ clustered. Setting it\nto 1 will disable this stop criterion."
  type: double
  inputBinding:
    prefix: --stop_fraction
- id: in_die_on_kill
  doc: "If set, after receiving a KILL signal,\nthe program will die and no results\n\
    will be produced. By default clustering\nwill stop but clusters will be merged\n\
    and partial results will be printed as\nusual."
  type: boolean
  inputBinding:
    prefix: --die_on_kill
- id: in_not_processed_points_file
  doc: "Path to file to which unprocessed\norigins will be dumped at KILL signal"
  type: File
  inputBinding:
    prefix: --not_processed_points_file
- id: in_print_wall_clock
  doc: "[ --print_time_statistics ]        Print wall clock time profiles of\nvarious\
    \ analysis parts. This is not\naggressive and won't increase\ncompuatation time."
  type: boolean
  inputBinding:
    prefix: -t
- id: in_show_progress_bar
  doc: "[ --show_progress_bar ]            Show progress bar, nice if output is\n\
    printed to console, don't use if you\nare redirecting to a file. Verbosity\nmust\
    \ be set to at least PROGRESS for it\nto have an effect."
  type: File
  inputBinding:
    prefix: -b
- id: in_canopy_size_stats_file
  doc: "If set, to this file current progress\nafter each processed origin will be\n\
    dumped in format <index>\n<num_left_origins> <this_canopy_size>\n<total_num_thread_collisions>"
  type: File
  inputBinding:
    prefix: --canopy_size_stats_file
- id: in_use_dot
  doc: '-v [ --verbosity ] arg (=info)        Control how much information should
    be '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_filtered_out_points_min_obs_file
  doc: "File to which write out those files\nthat didn't match the filter_min_obs\n\
    filter"
  type: File
  outputBinding:
    glob: $(inputs.in_filtered_out_points_min_obs_file)
- id: out_filtered_out_points_max_dominant_obs_file
  doc: "File to which write out those files\nthat didn't match the\nfilter_max_dominant_obs\
    \ filter."
  type: File
  outputBinding:
    glob: $(inputs.in_filtered_out_points_max_dominant_obs_file)
- id: out_show_progress_bar
  doc: "[ --show_progress_bar ]            Show progress bar, nice if output is\n\
    printed to console, don't use if you\nare redirecting to a file. Verbosity\nmust\
    \ be set to at least PROGRESS for it\nto have an effect."
  type: File
  outputBinding:
    glob: $(inputs.in_show_progress_bar)
cwlVersion: v1.1
baseCommand:
- cc.bin
