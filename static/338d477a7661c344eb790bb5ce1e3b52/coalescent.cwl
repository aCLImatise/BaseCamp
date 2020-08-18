class: CommandLineTool
id: ../../../coalescent.cwl
inputs:
- id: arg_parameter_file
  doc: '[ --paramfile ] arg                parameter file'
  type: boolean
  inputBinding:
    prefix: -p
- id: arg_genetic_map
  doc: '[ --recombfile ] arg               genetic map file (if specified,  overrides
    the one in paramfile)'
  type: boolean
  inputBinding:
    prefix: -R
- id: gen_map_random_regions
  doc: for each simulation use a randomly  chosen subregion of the genetic map
  type: boolean
  inputBinding:
    prefix: --genmapRandomRegions
- id: arg_file_read
  doc: '[ --trajfile ] arg                 file from which to read sweep  trajectory'
  type: boolean
  inputBinding:
    prefix: -J
- id: arg_number_output
  doc: '[ --nsims ] arg (=1)               number of simulations to output'
  type: boolean
  inputBinding:
    prefix: -n
- id: arg_random_seed
  doc: '[ --seed ] arg (=0)                random seed (0 to use current time)'
  type: boolean
  inputBinding:
    prefix: -r
- id: arg_max_dist
  doc: '[ --max-coal-dist ] arg            max dist betw segs for coalescence'
  type: boolean
  inputBinding:
    prefix: -u
- id: use_convex_hull
  doc: '[ --max-coal-dist-cvx-hull ]       use convex hull for max coal dist'
  type: boolean
  inputBinding:
    prefix: -U
- id: arg_shift_locations
  doc: '[ --genmapshift ] arg              shift all genmap locations by this  delta'
  type: boolean
  inputBinding:
    prefix: -G
- id: sweep_end_freq
  doc: '[ --sweep-frac-sample ]            sweep end freq specifies exact sample  fraction'
  type: boolean
  inputBinding:
    prefix: -E
- id: apx_with_t_raj_ok
  doc: enable coalapx even when pop size traj  specified (experimental)
  type: boolean
  inputBinding:
    prefix: --apx-with-traj-ok
- id: apx_min_factor
  doc: enable coalapx only when pop size  exceeds active sample size by this  factor
    (experimental)
  type: string
  inputBinding:
    prefix: --apx-min-factor
- id: apx_rej_samp
  doc: (=1)               use rejection sampling (experimental)
  type: string
  inputBinding:
    prefix: --apx-rej-samp
- id: sweep_three_no_one_sided_re_combs
  doc: handle one-sided recombs (experimental)
  type: boolean
  inputBinding:
    prefix: --sweep3-no-one-sided-recombs
- id: show_one_sim_progress
  doc: show progress of coalescence in each  sim
  type: boolean
  inputBinding:
    prefix: --show-one-sim-progress
- id: po_is_max_steps
  doc: '(=100000)        max # of steps when evaluating waiting  times'
  type: string
  inputBinding:
    prefix: --pois-max-steps
- id: po_is_prec
  doc: (=1.0000000000000001e-05) precision when evaluating waiting times
  type: string
  inputBinding:
    prefix: --pois-prec
- id: t_raj_only
  doc: just simulate trajectories and output  present-day freqs
  type: boolean
  inputBinding:
    prefix: --traj-only
- id: arg_base_name
  doc: '[ --outfilebase ] arg              base name for output files in cosi  format'
  type: boolean
  inputBinding:
    prefix: -o
- id: write_output_stdout_ms
  doc: '[ --outms ]                        write output to stdout in ms format'
  type: boolean
  inputBinding:
    prefix: -m
- id: tp_ed
  doc: write output to stdout in tped format,  to files pfx-rep-pop.tped
  type: string
  inputBinding:
    prefix: --tped
- id: output_pop_info
  doc: output pop info in ms format output
  type: boolean
  inputBinding:
    prefix: --output-pop-info
- id: output_gen_map
  doc: output genetic map in ms format output
  type: boolean
  inputBinding:
    prefix: --output-gen-map
- id: arg_number_decimal
  doc: '[ --output-precision ] arg         number of decimal places used for  floats
    in the outputs'
  type: boolean
  inputBinding:
    prefix: -P
- id: arg_file_output
  doc: '[ --trajoutfile ] arg              file to which to output sweep  trajectory'
  type: boolean
  inputBinding:
    prefix: -j
- id: output_tree_stats
  doc: '[ --write-tree-stats ]             output tree stats'
  type: boolean
  inputBinding:
    prefix: -T
- id: output_mutation_ages
  doc: '[ --write-mut-ages ]               output mutation ages'
  type: boolean
  inputBinding:
    prefix: -M
- id: output_recombination_locations
  doc: '[ --write-recomb-locs ]            output recombination locations'
  type: boolean
  inputBinding:
    prefix: -L
- id: representing_locations_simulated
  doc: "[ --output-ARG ]                   output ARG edges.  Edges are written in\
    \ ms output format (see -m option), one  per line, after the '//' line but  before\
    \ the 'segsites: ' line of each  simulation. Format is: E <edgeKind> <node_1_id>\
    \ <node_2_id>  <node_1_generation> <node_2_generation> <seg_1_beg> <seg_1_end>\
    \ ... <seg_k_beg> <seg_k_end>. Edge kinds are: R, recombination; G,  gene conversion;\
    \ C, coalescence.  seg_i_beg, seg_i_end give chromosomal  segments inherited along\
    \ the edge;  locations are values in [0.0,1.0]  representing locations within\
    \ the  simulated region."
  type: boolean
  inputBinding:
    prefix: -e
- id: position_output_mutation
  doc: '[ --write-mut-contexts ] position  output mutation contexts for these  locations'
  type: boolean
  inputBinding:
    prefix: -C
- id: drop_singletons
  doc: drop this fraction of singleton SNPs
  type: string
  inputBinding:
    prefix: --drop-singletons
- id: print_version_info
  doc: '[ --version ]                      print version info and compile-time  options'
  type: boolean
  inputBinding:
    prefix: -V
- id: _verbose_output
  doc: '[ --verbose ]                      verbose output'
  type: boolean
  inputBinding:
    prefix: -v
- id: _show_progress
  doc: '[ --show-progress ] [=arg(=10)]    show progress'
  type: boolean
  inputBinding:
    prefix: -g
- id: arg_log_file
  doc: '[ --logfile ] arg                  log file'
  type: boolean
  inputBinding:
    prefix: -l
- id: arg_seg_file
  doc: '[ --segfile ] arg                  seg file'
  type: boolean
  inputBinding:
    prefix: -s
- id: arg_delta_factor
  doc: '[ --deltaTfactor ] arg (=1)        delta factor for sweep'
  type: boolean
  inputBinding:
    prefix: -d
- id: compute_tree_size
  doc: '[ --tree-size-only ]               compute tree size only'
  type: boolean
  inputBinding:
    prefix: -t
- id: print_number_recombs
  doc: '[ --show-num-recombs ]             print number of recombs'
  type: boolean
  inputBinding:
    prefix: -k
- id: _simulation_quit
  doc: '[ --sim-and-quit ]                 do simulation and quit'
  type: boolean
  inputBinding:
    prefix: -S
- id: output_sim_times
  doc: for each sim output the time it took
  type: boolean
  inputBinding:
    prefix: --output-sim-times
- id: output_end_gens
  doc: for each sim output the generation at  which it ended
  type: boolean
  inputBinding:
    prefix: --output-end-gens
- id: stop_after_minutes
  doc: (=0)         stop simulation after this many minutes
  type: string
  inputBinding:
    prefix: --stop-after-minutes
- id: custom_stats
  doc: compute custom stats
  type: boolean
  inputBinding:
    prefix: --custom-stats
- id: custom_stats_exclude_pop
  doc: (=-1)  when computing custom stats, exclude  this pop
  type: string
  inputBinding:
    prefix: --custom-stats-exclude-pop
outputs: []
cwlVersion: v1.1
baseCommand:
- coalescent
