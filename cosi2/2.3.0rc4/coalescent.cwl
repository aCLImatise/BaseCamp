#!/usr/bin/env cwl-runner

baseCommand:
- coalescent
class: CommandLineTool
cwlVersion: v1.0
id: coalescent
inputs:
- doc: '[ --paramfile ] arg                parameter file'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: '[ --recombfile ] arg               genetic map file (if specified,  overrides
    the one in paramfile)'
  id: r
  inputBinding:
    prefix: -R
  type: boolean
- doc: for each simulation use a randomly  chosen subregion of the genetic map
  id: gen_map_random_regions
  inputBinding:
    prefix: --genmapRandomRegions
  type: boolean
- doc: '[ --trajfile ] arg                 file from which to read sweep  trajectory'
  id: j
  inputBinding:
    prefix: -J
  type: boolean
- doc: '[ --nsims ] arg (=1)               number of simulations to output'
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: '[ --seed ] arg (=0)                random seed (0 to use current time)'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: '[ --max-coal-dist ] arg            max dist betw segs for coalescence'
  id: u
  inputBinding:
    prefix: -u
  type: boolean
- doc: '[ --max-coal-dist-cvx-hull ]       use convex hull for max coal dist'
  id: u
  inputBinding:
    prefix: -U
  type: boolean
- doc: '[ --genmapshift ] arg              shift all genmap locations by this  delta'
  id: g
  inputBinding:
    prefix: -G
  type: boolean
- doc: '[ --sweep-frac-sample ]            sweep end freq specifies exact sample  fraction'
  id: e
  inputBinding:
    prefix: -E
  type: boolean
- doc: enable coalapx even when pop size traj  specified (experimental)
  id: apx_with_t_raj_ok
  inputBinding:
    prefix: --apx-with-traj-ok
  type: boolean
- doc: enable coalapx only when pop size  exceeds active sample size by this  factor
    (experimental)
  id: apx_min_factor
  inputBinding:
    prefix: --apx-min-factor
  type: string
- doc: (=1)               use rejection sampling (experimental)
  id: apx_rej_samp
  inputBinding:
    prefix: --apx-rej-samp
  type: string
- doc: handle one-sided recombs (experimental)
  id: sweep3_no_one_sided_re_combs
  inputBinding:
    prefix: --sweep3-no-one-sided-recombs
  type: boolean
- doc: show progress of coalescence in each  sim
  id: show_one_sim_progress
  inputBinding:
    prefix: --show-one-sim-progress
  type: boolean
- doc: '(=100000)        max # of steps when evaluating waiting  times'
  id: po_is_max_steps
  inputBinding:
    prefix: --pois-max-steps
  type: string
- doc: (=1.0000000000000001e-05) precision when evaluating waiting times
  id: po_is_prec
  inputBinding:
    prefix: --pois-prec
  type: string
- doc: just simulate trajectories and output  present-day freqs
  id: t_raj_only
  inputBinding:
    prefix: --traj-only
  type: boolean
- doc: '[ --outfilebase ] arg              base name for output files in cosi  format'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '[ --outms ]                        write output to stdout in ms format'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: write output to stdout in tped format,  to files pfx-rep-pop.tped
  id: tp_ed
  inputBinding:
    prefix: --tped
  type: string
- doc: output pop info in ms format output
  id: output_pop_info
  inputBinding:
    prefix: --output-pop-info
  type: boolean
- doc: output genetic map in ms format output
  id: output_gen_map
  inputBinding:
    prefix: --output-gen-map
  type: boolean
- doc: '[ --output-precision ] arg         number of decimal places used for  floats
    in the outputs'
  id: p
  inputBinding:
    prefix: -P
  type: boolean
- doc: '[ --trajoutfile ] arg              file to which to output sweep  trajectory'
  id: j
  inputBinding:
    prefix: -j
  type: boolean
- doc: '[ --write-tree-stats ]             output tree stats'
  id: t
  inputBinding:
    prefix: -T
  type: boolean
- doc: '[ --write-mut-ages ]               output mutation ages'
  id: m
  inputBinding:
    prefix: -M
  type: boolean
- doc: '[ --write-recomb-locs ]            output recombination locations'
  id: l
  inputBinding:
    prefix: -L
  type: boolean
- doc: "[ --output-ARG ]                   output ARG edges.  Edges are written in\
    \ ms output format (see -m option), one  per line, after the '//' line but  before\
    \ the 'segsites: ' line of each  simulation. Format is: E <edgeKind> <node_1_id>\
    \ <node_2_id>  <node_1_generation> <node_2_generation> <seg_1_beg> <seg_1_end>\
    \ ... <seg_k_beg> <seg_k_end>. Edge kinds are: R, recombination; G,  gene conversion;\
    \ C, coalescence.  seg_i_beg, seg_i_end give chromosomal  segments inherited along\
    \ the edge;  locations are values in [0.0,1.0]  representing locations within\
    \ the  simulated region."
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: '[ --write-mut-contexts ] position  output mutation contexts for these  locations'
  id: c
  inputBinding:
    prefix: -C
  type: boolean
- doc: drop this fraction of singleton SNPs
  id: drop_singletons
  inputBinding:
    prefix: --drop-singletons
  type: string
- doc: '[ --version ]                      print version info and compile-time  options'
  id: v
  inputBinding:
    prefix: -V
  type: boolean
- doc: '[ --verbose ]                      verbose output'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: '[ --show-progress ] [=arg(=10)]    show progress'
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: '[ --logfile ] arg                  log file'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: '[ --segfile ] arg                  seg file'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: '[ --deltaTfactor ] arg (=1)        delta factor for sweep'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: '[ --tree-size-only ]               compute tree size only'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: '[ --show-num-recombs ]             print number of recombs'
  id: k
  inputBinding:
    prefix: -k
  type: boolean
- doc: '[ --sim-and-quit ]                 do simulation and quit'
  id: s
  inputBinding:
    prefix: -S
  type: boolean
- doc: for each sim output the time it took
  id: output_sim_times
  inputBinding:
    prefix: --output-sim-times
  type: boolean
- doc: for each sim output the generation at  which it ended
  id: output_end_gens
  inputBinding:
    prefix: --output-end-gens
  type: boolean
- doc: (=0)         stop simulation after this many minutes
  id: stop_after_minutes
  inputBinding:
    prefix: --stop-after-minutes
  type: string
- doc: compute custom stats
  id: custom_stats
  inputBinding:
    prefix: --custom-stats
  type: boolean
- doc: (=-1)  when computing custom stats, exclude  this pop
  id: custom_stats_exclude_pop
  inputBinding:
    prefix: --custom-stats-exclude-pop
  type: string
