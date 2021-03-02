version 1.0

task Coalescent {
  input {
    Boolean? arg_parameter_file
    Boolean? arg_genetic_map
    Boolean? gen_map_random_regions
    Boolean? arg_file_read
    Boolean? arg_random_seed
    Boolean? arg_max_dist
    Boolean? use_convex_hull
    Boolean? arg_shift_locations
    Int? apx_min_factor
    Int? apx_rej_samp
    Boolean? sweep_three_no_one_sided_re_combs
    Boolean? show_one_sim_progress
    Boolean? t_raj_only
    Boolean? arg_base_name
    String? tp_ed
    Boolean? output_pop_info
    Boolean? output_gen_map
    Boolean? arg_number_decimal
    File? arg_file_output
    Boolean? output_mutation_ages
    Boolean? output_recombination_locations
    Boolean? output_arg_edges
    Boolean? position_output_mutation
    Boolean? print_version_info
    Boolean? _show_progress
    Boolean? arg_log_file
    Boolean? arg_seg_file
    Boolean? arg_delta_factor
    Boolean? compute_tree_size
    Boolean? print_number_recombs
    Boolean? do_simulation_quit
    Boolean? output_sim_times
    Boolean? output_end_gens
    Int? stop_after_minutes
    Boolean? custom_stats
    Int? custom_stats_exclude_pop
    String arg_number_simulations
    String delta
    String fraction
    String sim
    String times
    String format
    String t_output_tree
    String locations
    String options
  }
  command <<<
    coalescent \
      ~{arg_number_simulations} \
      ~{delta} \
      ~{fraction} \
      ~{sim} \
      ~{times} \
      ~{format} \
      ~{t_output_tree} \
      ~{locations} \
      ~{options} \
      ~{if (arg_parameter_file) then "-p" else ""} \
      ~{if (arg_genetic_map) then "-R" else ""} \
      ~{if (gen_map_random_regions) then "--genmapRandomRegions" else ""} \
      ~{if (arg_file_read) then "-J" else ""} \
      ~{if (arg_random_seed) then "-r" else ""} \
      ~{if (arg_max_dist) then "-u" else ""} \
      ~{if (use_convex_hull) then "-U" else ""} \
      ~{if (arg_shift_locations) then "-G" else ""} \
      ~{if defined(apx_min_factor) then ("--apx-min-factor " +  '"' + apx_min_factor + '"') else ""} \
      ~{if defined(apx_rej_samp) then ("--apx-rej-samp " +  '"' + apx_rej_samp + '"') else ""} \
      ~{if (sweep_three_no_one_sided_re_combs) then "--sweep3-no-one-sided-recombs" else ""} \
      ~{if (show_one_sim_progress) then "--show-one-sim-progress" else ""} \
      ~{if (t_raj_only) then "--traj-only" else ""} \
      ~{if (arg_base_name) then "-o" else ""} \
      ~{if defined(tp_ed) then ("--tped " +  '"' + tp_ed + '"') else ""} \
      ~{if (output_pop_info) then "--output-pop-info" else ""} \
      ~{if (output_gen_map) then "--output-gen-map" else ""} \
      ~{if (arg_number_decimal) then "-P" else ""} \
      ~{if (arg_file_output) then "-j" else ""} \
      ~{if (output_mutation_ages) then "-M" else ""} \
      ~{if (output_recombination_locations) then "-L" else ""} \
      ~{if (output_arg_edges) then "-e" else ""} \
      ~{if (position_output_mutation) then "-C" else ""} \
      ~{if (print_version_info) then "-V" else ""} \
      ~{if (_show_progress) then "-g" else ""} \
      ~{if (arg_log_file) then "-l" else ""} \
      ~{if (arg_seg_file) then "-s" else ""} \
      ~{if (arg_delta_factor) then "-d" else ""} \
      ~{if (compute_tree_size) then "-t" else ""} \
      ~{if (print_number_recombs) then "-k" else ""} \
      ~{if (do_simulation_quit) then "-S" else ""} \
      ~{if (output_sim_times) then "--output-sim-times" else ""} \
      ~{if (output_end_gens) then "--output-end-gens" else ""} \
      ~{if defined(stop_after_minutes) then ("--stop-after-minutes " +  '"' + stop_after_minutes + '"') else ""} \
      ~{if (custom_stats) then "--custom-stats" else ""} \
      ~{if defined(custom_stats_exclude_pop) then ("--custom-stats-exclude-pop " +  '"' + custom_stats_exclude_pop + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arg_parameter_file: "[ --paramfile ] arg                parameter file"
    arg_genetic_map: "[ --recombfile ] arg               genetic map file (if specified,\\noverrides the one in paramfile)"
    gen_map_random_regions: "for each simulation use a randomly\\nchosen subregion of the genetic map"
    arg_file_read: "[ --trajfile ] arg                 file from which to read sweep"
    arg_random_seed: "[ --seed ] arg (=0)                random seed (0 to use current time)"
    arg_max_dist: "[ --max-coal-dist ] arg            max dist betw segs for coalescence"
    use_convex_hull: "[ --max-coal-dist-cvx-hull ]       use convex hull for max coal dist"
    arg_shift_locations: "[ --genmapshift ] arg              shift all genmap locations by this"
    apx_min_factor: "enable coalapx only when pop size\\nexceeds active sample size by this\\nfactor (experimental)"
    apx_rej_samp: "(=1)               use rejection sampling (experimental)"
    sweep_three_no_one_sided_re_combs: "handle one-sided recombs (experimental)"
    show_one_sim_progress: "show progress of coalescence in each"
    t_raj_only: "just simulate trajectories and output\\npresent-day freqs"
    arg_base_name: "[ --outfilebase ] arg              base name for output files in cosi"
    tp_ed: "write output to stdout in tped format,\\nto files pfx-rep-pop.tped"
    output_pop_info: "output pop info in ms format output"
    output_gen_map: "output genetic map in ms format output"
    arg_number_decimal: "[ --output-precision ] arg         number of decimal places used for\\nfloats in the outputs"
    arg_file_output: "[ --trajoutfile ] arg              file to which to output sweep"
    output_mutation_ages: "[ --write-mut-ages ]               output mutation ages"
    output_recombination_locations: "[ --write-recomb-locs ]            output recombination locations"
    output_arg_edges: "[ --output-ARG ]                   output ARG edges.  Edges are written in\\nms output format (see -m option), one\\nper line, after the '//' line but\\nbefore the 'segsites: ' line of each\\nsimulation. Format is:\\nE <edgeKind> <node_1_id> <node_2_id>\\n<node_1_generation> <node_2_generation>\\n<seg_1_beg> <seg_1_end> ... <seg_k_beg>\\n<seg_k_end>.\\nEdge kinds are: R, recombination; G,\\ngene conversion; C, coalescence.\\nseg_i_beg, seg_i_end give chromosomal\\nsegments inherited along the edge;\\nlocations are values in [0.0,1.0]\\nrepresenting locations within the\\nsimulated region."
    position_output_mutation: "[ --write-mut-contexts ] position  output mutation contexts for these"
    print_version_info: "[ --version ]                      print version info and compile-time"
    _show_progress: "[ --show-progress ] [=arg(=10)]    show progress"
    arg_log_file: "[ --logfile ] arg                  log file"
    arg_seg_file: "[ --segfile ] arg                  seg file"
    arg_delta_factor: "[ --deltaTfactor ] arg (=1)        delta factor for sweep"
    compute_tree_size: "[ --tree-size-only ]               compute tree size only"
    print_number_recombs: "[ --show-num-recombs ]             print number of recombs"
    do_simulation_quit: "[ --sim-and-quit ]                 do simulation and quit"
    output_sim_times: "for each sim output the time it took"
    output_end_gens: "for each sim output the generation at\\nwhich it ended"
    stop_after_minutes: "(=0)         stop simulation after this many minutes"
    custom_stats: "compute custom stats"
    custom_stats_exclude_pop: "(=-1)  when computing custom stats, exclude\\nthis pop\\n"
    arg_number_simulations: "-n [ --nsims ] arg (=1)               number of simulations to output"
    delta: "-E [ --sweep-frac-sample ]            sweep end freq specifies exact sample "
    fraction: "--apx-with-traj-ok                    enable coalapx even when pop size traj "
    sim: "--pois-max-steps arg (=100000)        max # of steps when evaluating waiting "
    times: "--pois-prec arg (=1.0000000000000001e-05)"
    format: "-m [ --outms ]                        write output to stdout in ms format"
    t_output_tree: "-T [ --write-tree-stats ]             output tree stats"
    locations: "--drop-singletons fraction            drop this fraction of singleton SNPs"
    options: "-v [ --verbose ]                      verbose output"
  }
  output {
    File out_stdout = stdout()
    File out_arg_file_output = "${in_arg_file_output}"
  }
}