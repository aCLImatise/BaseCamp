version 1.0

task Coalescent {
  input {
    Boolean? arg_parameter_file
    Boolean? arg_genetic_map
    Boolean? gen_map_random_regions
    Boolean? arg_file_read
    Boolean? arg_number_output
    Boolean? arg_random_seed
    Boolean? arg_max_dist
    Boolean? use_convex_hull
    Boolean? arg_shift_locations
    Boolean? sweep_end_freq
    Boolean? apx_with_t_raj_ok
    String? apx_min_factor
    String? apx_rej_samp
    Boolean? sweep_three_no_one_sided_re_combs
    Boolean? show_one_sim_progress
    String? po_is_max_steps
    String? po_is_prec
    Boolean? t_raj_only
    Boolean? arg_base_name
    Boolean? write_output_stdout_ms
    String? tp_ed
    Boolean? output_pop_info
    Boolean? output_gen_map
    Boolean? arg_number_decimal
    Boolean? arg_file_output
    Boolean? output_tree_stats
    Boolean? output_mutation_ages
    Boolean? output_recombination_locations
    Boolean? representing_locations_simulated
    Boolean? position_output_mutation
    String? drop_singletons
    Boolean? print_version_info
    Boolean? _verbose_output
    Boolean? _show_progress
    Boolean? arg_log_file
    Boolean? arg_seg_file
    Boolean? arg_delta_factor
    Boolean? compute_tree_size
    Boolean? print_number_recombs
    Boolean? _simulation_quit
    Boolean? output_sim_times
    Boolean? output_end_gens
    String? stop_after_minutes
    Boolean? custom_stats
    String? custom_stats_exclude_pop
  }
  command <<<
    coalescent \
      ~{true="-p" false="" arg_parameter_file} \
      ~{true="-R" false="" arg_genetic_map} \
      ~{true="--genmapRandomRegions" false="" gen_map_random_regions} \
      ~{true="-J" false="" arg_file_read} \
      ~{true="-n" false="" arg_number_output} \
      ~{true="-r" false="" arg_random_seed} \
      ~{true="-u" false="" arg_max_dist} \
      ~{true="-U" false="" use_convex_hull} \
      ~{true="-G" false="" arg_shift_locations} \
      ~{true="-E" false="" sweep_end_freq} \
      ~{true="--apx-with-traj-ok" false="" apx_with_t_raj_ok} \
      ~{if defined(apx_min_factor) then ("--apx-min-factor " +  '"' + apx_min_factor + '"') else ""} \
      ~{if defined(apx_rej_samp) then ("--apx-rej-samp " +  '"' + apx_rej_samp + '"') else ""} \
      ~{true="--sweep3-no-one-sided-recombs" false="" sweep_three_no_one_sided_re_combs} \
      ~{true="--show-one-sim-progress" false="" show_one_sim_progress} \
      ~{if defined(po_is_max_steps) then ("--pois-max-steps " +  '"' + po_is_max_steps + '"') else ""} \
      ~{if defined(po_is_prec) then ("--pois-prec " +  '"' + po_is_prec + '"') else ""} \
      ~{true="--traj-only" false="" t_raj_only} \
      ~{true="-o" false="" arg_base_name} \
      ~{true="-m" false="" write_output_stdout_ms} \
      ~{if defined(tp_ed) then ("--tped " +  '"' + tp_ed + '"') else ""} \
      ~{true="--output-pop-info" false="" output_pop_info} \
      ~{true="--output-gen-map" false="" output_gen_map} \
      ~{true="-P" false="" arg_number_decimal} \
      ~{true="-j" false="" arg_file_output} \
      ~{true="-T" false="" output_tree_stats} \
      ~{true="-M" false="" output_mutation_ages} \
      ~{true="-L" false="" output_recombination_locations} \
      ~{true="-e" false="" representing_locations_simulated} \
      ~{true="-C" false="" position_output_mutation} \
      ~{if defined(drop_singletons) then ("--drop-singletons " +  '"' + drop_singletons + '"') else ""} \
      ~{true="-V" false="" print_version_info} \
      ~{true="-v" false="" _verbose_output} \
      ~{true="-g" false="" _show_progress} \
      ~{true="-l" false="" arg_log_file} \
      ~{true="-s" false="" arg_seg_file} \
      ~{true="-d" false="" arg_delta_factor} \
      ~{true="-t" false="" compute_tree_size} \
      ~{true="-k" false="" print_number_recombs} \
      ~{true="-S" false="" _simulation_quit} \
      ~{true="--output-sim-times" false="" output_sim_times} \
      ~{true="--output-end-gens" false="" output_end_gens} \
      ~{if defined(stop_after_minutes) then ("--stop-after-minutes " +  '"' + stop_after_minutes + '"') else ""} \
      ~{true="--custom-stats" false="" custom_stats} \
      ~{if defined(custom_stats_exclude_pop) then ("--custom-stats-exclude-pop " +  '"' + custom_stats_exclude_pop + '"') else ""}
  >>>
  parameter_meta {
    arg_parameter_file: "[ --paramfile ] arg                parameter file"
    arg_genetic_map: "[ --recombfile ] arg               genetic map file (if specified,  overrides the one in paramfile)"
    gen_map_random_regions: "for each simulation use a randomly  chosen subregion of the genetic map"
    arg_file_read: "[ --trajfile ] arg                 file from which to read sweep  trajectory"
    arg_number_output: "[ --nsims ] arg (=1)               number of simulations to output"
    arg_random_seed: "[ --seed ] arg (=0)                random seed (0 to use current time)"
    arg_max_dist: "[ --max-coal-dist ] arg            max dist betw segs for coalescence"
    use_convex_hull: "[ --max-coal-dist-cvx-hull ]       use convex hull for max coal dist"
    arg_shift_locations: "[ --genmapshift ] arg              shift all genmap locations by this  delta"
    sweep_end_freq: "[ --sweep-frac-sample ]            sweep end freq specifies exact sample  fraction"
    apx_with_t_raj_ok: "enable coalapx even when pop size traj  specified (experimental)"
    apx_min_factor: "enable coalapx only when pop size  exceeds active sample size by this  factor (experimental)"
    apx_rej_samp: "(=1)               use rejection sampling (experimental)"
    sweep_three_no_one_sided_re_combs: "handle one-sided recombs (experimental)"
    show_one_sim_progress: "show progress of coalescence in each  sim"
    po_is_max_steps: "(=100000)        max # of steps when evaluating waiting  times"
    po_is_prec: "(=1.0000000000000001e-05) precision when evaluating waiting times"
    t_raj_only: "just simulate trajectories and output  present-day freqs"
    arg_base_name: "[ --outfilebase ] arg              base name for output files in cosi  format"
    write_output_stdout_ms: "[ --outms ]                        write output to stdout in ms format"
    tp_ed: "write output to stdout in tped format,  to files pfx-rep-pop.tped"
    output_pop_info: "output pop info in ms format output"
    output_gen_map: "output genetic map in ms format output"
    arg_number_decimal: "[ --output-precision ] arg         number of decimal places used for  floats in the outputs"
    arg_file_output: "[ --trajoutfile ] arg              file to which to output sweep  trajectory"
    output_tree_stats: "[ --write-tree-stats ]             output tree stats"
    output_mutation_ages: "[ --write-mut-ages ]               output mutation ages"
    output_recombination_locations: "[ --write-recomb-locs ]            output recombination locations"
    representing_locations_simulated: "[ --output-ARG ]                   output ARG edges.  Edges are written in ms output format (see -m option), one  per line, after the '//' line but  before the 'segsites: ' line of each  simulation. Format is: E <edgeKind> <node_1_id> <node_2_id>  <node_1_generation> <node_2_generation> <seg_1_beg> <seg_1_end> ... <seg_k_beg> <seg_k_end>. Edge kinds are: R, recombination; G,  gene conversion; C, coalescence.  seg_i_beg, seg_i_end give chromosomal  segments inherited along the edge;  locations are values in [0.0,1.0]  representing locations within the  simulated region."
    position_output_mutation: "[ --write-mut-contexts ] position  output mutation contexts for these  locations"
    drop_singletons: "drop this fraction of singleton SNPs"
    print_version_info: "[ --version ]                      print version info and compile-time  options"
    _verbose_output: "[ --verbose ]                      verbose output"
    _show_progress: "[ --show-progress ] [=arg(=10)]    show progress"
    arg_log_file: "[ --logfile ] arg                  log file"
    arg_seg_file: "[ --segfile ] arg                  seg file"
    arg_delta_factor: "[ --deltaTfactor ] arg (=1)        delta factor for sweep"
    compute_tree_size: "[ --tree-size-only ]               compute tree size only"
    print_number_recombs: "[ --show-num-recombs ]             print number of recombs"
    _simulation_quit: "[ --sim-and-quit ]                 do simulation and quit"
    output_sim_times: "for each sim output the time it took"
    output_end_gens: "for each sim output the generation at  which it ended"
    stop_after_minutes: "(=0)         stop simulation after this many minutes"
    custom_stats: "compute custom stats"
    custom_stats_exclude_pop: "(=-1)  when computing custom stats, exclude  this pop"
  }
}