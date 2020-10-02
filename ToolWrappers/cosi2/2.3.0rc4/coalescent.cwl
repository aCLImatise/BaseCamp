class: CommandLineTool
id: coalescent.cwl
inputs:
- id: in_arg_parameter_file
  doc: '[ --paramfile ] arg                parameter file'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_arg_genetic_map
  doc: "[ --recombfile ] arg               genetic map file (if specified,\noverrides\
    \ the one in paramfile)"
  type: boolean
  inputBinding:
    prefix: -R
- id: in_gen_map_random_regions
  doc: "for each simulation use a randomly\nchosen subregion of the genetic map"
  type: boolean
  inputBinding:
    prefix: --genmapRandomRegions
- id: in_arg_file_read
  doc: '[ --trajfile ] arg                 file from which to read sweep'
  type: boolean
  inputBinding:
    prefix: -J
- id: in_arg_random_seed
  doc: '[ --seed ] arg (=0)                random seed (0 to use current time)'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_arg_max_dist
  doc: '[ --max-coal-dist ] arg            max dist betw segs for coalescence'
  type: boolean
  inputBinding:
    prefix: -u
- id: in_use_convex_hull
  doc: '[ --max-coal-dist-cvx-hull ]       use convex hull for max coal dist'
  type: boolean
  inputBinding:
    prefix: -U
- id: in_arg_shift_locations
  doc: '[ --genmapshift ] arg              shift all genmap locations by this'
  type: boolean
  inputBinding:
    prefix: -G
- id: in_apx_min_factor
  doc: "enable coalapx only when pop size\nexceeds active sample size by this\nfactor\
    \ (experimental)"
  type: long
  inputBinding:
    prefix: --apx-min-factor
- id: in_apx_rej_samp
  doc: (=1)               use rejection sampling (experimental)
  type: long
  inputBinding:
    prefix: --apx-rej-samp
- id: in_sweep_three_no_one_sided_re_combs
  doc: handle one-sided recombs (experimental)
  type: boolean
  inputBinding:
    prefix: --sweep3-no-one-sided-recombs
- id: in_show_one_sim_progress
  doc: show progress of coalescence in each
  type: boolean
  inputBinding:
    prefix: --show-one-sim-progress
- id: in_t_raj_only
  doc: "just simulate trajectories and output\npresent-day freqs"
  type: boolean
  inputBinding:
    prefix: --traj-only
- id: in_arg_base_name
  doc: '[ --outfilebase ] arg              base name for output files in cosi'
  type: boolean
  inputBinding:
    prefix: -o
- id: in_tp_ed
  doc: "write output to stdout in tped format,\nto files pfx-rep-pop.tped"
  type: string
  inputBinding:
    prefix: --tped
- id: in_output_pop_info
  doc: output pop info in ms format output
  type: boolean
  inputBinding:
    prefix: --output-pop-info
- id: in_output_gen_map
  doc: output genetic map in ms format output
  type: boolean
  inputBinding:
    prefix: --output-gen-map
- id: in_arg_number_decimal
  doc: "[ --output-precision ] arg         number of decimal places used for\nfloats\
    \ in the outputs"
  type: boolean
  inputBinding:
    prefix: -P
- id: in_arg_file_output
  doc: '[ --trajoutfile ] arg              file to which to output sweep'
  type: File
  inputBinding:
    prefix: -j
- id: in_output_mutation_ages
  doc: '[ --write-mut-ages ]               output mutation ages'
  type: boolean
  inputBinding:
    prefix: -M
- id: in_output_recombination_locations
  doc: '[ --write-recomb-locs ]            output recombination locations'
  type: boolean
  inputBinding:
    prefix: -L
- id: in_output_arg_edges
  doc: "[ --output-ARG ]                   output ARG edges.  Edges are written in\n\
    ms output format (see -m option), one\nper line, after the '//' line but\nbefore\
    \ the 'segsites: ' line of each\nsimulation. Format is:\nE <edgeKind> <node_1_id>\
    \ <node_2_id>\n<node_1_generation> <node_2_generation>\n<seg_1_beg> <seg_1_end>\
    \ ... <seg_k_beg>\n<seg_k_end>.\nEdge kinds are: R, recombination; G,\ngene conversion;\
    \ C, coalescence.\nseg_i_beg, seg_i_end give chromosomal\nsegments inherited along\
    \ the edge;\nlocations are values in [0.0,1.0]\nrepresenting locations within\
    \ the\nsimulated region."
  type: boolean
  inputBinding:
    prefix: -e
- id: in_position_mutation_contexts
  doc: '[ --write-mut-contexts ] position  output mutation contexts for these'
  type: boolean
  inputBinding:
    prefix: -C
- id: in_print_version_info
  doc: '[ --version ]                      print version info and compile-time'
  type: boolean
  inputBinding:
    prefix: -V
- id: in__show_progress
  doc: '[ --show-progress ] [=arg(=10)]    show progress'
  type: boolean
  inputBinding:
    prefix: -g
- id: in_arg_log_file
  doc: '[ --logfile ] arg                  log file'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_arg_seg_file
  doc: '[ --segfile ] arg                  seg file'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_arg_delta_factor
  doc: '[ --deltaTfactor ] arg (=1)        delta factor for sweep'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_compute_tree_size
  doc: '[ --tree-size-only ]               compute tree size only'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_print_number_recombs
  doc: '[ --show-num-recombs ]             print number of recombs'
  type: boolean
  inputBinding:
    prefix: -k
- id: in__simulation_quit
  doc: '[ --sim-and-quit ]                 do simulation and quit'
  type: boolean
  inputBinding:
    prefix: -S
- id: in_output_sim_times
  doc: for each sim output the time it took
  type: boolean
  inputBinding:
    prefix: --output-sim-times
- id: in_output_end_gens
  doc: "for each sim output the generation at\nwhich it ended"
  type: boolean
  inputBinding:
    prefix: --output-end-gens
- id: in_stop_after_minutes
  doc: (=0)         stop simulation after this many minutes
  type: long
  inputBinding:
    prefix: --stop-after-minutes
- id: in_custom_stats
  doc: compute custom stats
  type: boolean
  inputBinding:
    prefix: --custom-stats
- id: in_custom_stats_exclude_pop
  doc: "(=-1)  when computing custom stats, exclude\nthis pop\n"
  type: long
  inputBinding:
    prefix: --custom-stats-exclude-pop
- id: in_n_arg_number
  doc: -n [ --nsims ] arg (=1)               number of simulations to output
  type: string
  inputBinding:
    position: 0
- id: in_delta
  doc: '-E [ --sweep-frac-sample ]            sweep end freq specifies exact sample '
  type: string
  inputBinding:
    position: 1
- id: in_fraction
  doc: '--apx-with-traj-ok                    enable coalapx even when pop size traj '
  type: string
  inputBinding:
    position: 2
- id: in_sim
  doc: '--pois-max-steps arg (=100000)        max # of steps when evaluating waiting '
  type: string
  inputBinding:
    position: 0
- id: in_times
  doc: --pois-prec arg (=1.0000000000000001e-05)
  type: string
  inputBinding:
    position: 1
- id: in_format
  doc: -m [ --outms ]                        write output to stdout in ms format
  type: string
  inputBinding:
    position: 0
- id: in_t_output_tree
  doc: -T [ --write-tree-stats ]             output tree stats
  type: string
  inputBinding:
    position: 0
- id: in_locations
  doc: --drop-singletons fraction            drop this fraction of singleton SNPs
  type: string
  inputBinding:
    position: 1
- id: in_options
  doc: -v [ --verbose ]                      verbose output
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_file_output
  doc: '[ --trajoutfile ] arg              file to which to output sweep'
  type: File
  outputBinding:
    glob: $(inputs.in_arg_file_output)
cwlVersion: v1.1
baseCommand:
- coalescent
