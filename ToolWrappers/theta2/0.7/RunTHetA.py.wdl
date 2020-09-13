version 1.0

task RunTHetApy {
  input {
    File? tumor_file
    File? normal_file
    Int? number_of_subpopulations
    String? max_k
    Int? tau
    File? dir
    File? output_prefix
    Int? max_normal
    Int? num_processes
    Int? num_intervals
    String? bound_heuristic
    String? normal_bound_heuristic
    String? heuristic_lb
    String? heuristic_ub
    Boolean? bounds_only
    Boolean? no_multi_event
    File? results
    Boolean? force
    Boolean? get_values
    Boolean? no_interval_selection
    File? read_depth_file
    String? graph_format
    Boolean? baf
    Int? ratio_dev
    Int? min_frac
    Boolean? no_clustering
  }
  command <<<
    RunTHetA_py \
      ~{if defined(tumor_file) then ("--TUMOR_FILE " +  '"' + tumor_file + '"') else ""} \
      ~{if defined(normal_file) then ("--NORMAL_FILE " +  '"' + normal_file + '"') else ""} \
      ~{if defined(number_of_subpopulations) then ("--N " +  '"' + number_of_subpopulations + '"') else ""} \
      ~{if defined(max_k) then ("--MAX_K " +  '"' + max_k + '"') else ""} \
      ~{if defined(tau) then ("--TAU " +  '"' + tau + '"') else ""} \
      ~{if defined(dir) then ("--DIR " +  '"' + dir + '"') else ""} \
      ~{if defined(output_prefix) then ("--OUTPUT_PREFIX " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(max_normal) then ("--MAX_NORMAL " +  '"' + max_normal + '"') else ""} \
      ~{if defined(num_processes) then ("--NUM_PROCESSES " +  '"' + num_processes + '"') else ""} \
      ~{if defined(num_intervals) then ("--NUM_INTERVALS " +  '"' + num_intervals + '"') else ""} \
      ~{if defined(bound_heuristic) then ("--BOUND_HEURISTIC " +  '"' + bound_heuristic + '"') else ""} \
      ~{if defined(normal_bound_heuristic) then ("--NORMAL_BOUND_HEURISTIC " +  '"' + normal_bound_heuristic + '"') else ""} \
      ~{if defined(heuristic_lb) then ("--HEURISTIC_LB " +  '"' + heuristic_lb + '"') else ""} \
      ~{if defined(heuristic_ub) then ("--HEURISTIC_UB " +  '"' + heuristic_ub + '"') else ""} \
      ~{if (bounds_only) then "--BOUNDS_ONLY" else ""} \
      ~{if (no_multi_event) then "--NO_MULTI_EVENT" else ""} \
      ~{if defined(results) then ("--RESULTS " +  '"' + results + '"') else ""} \
      ~{if (force) then "--FORCE" else ""} \
      ~{if (get_values) then "--GET_VALUES" else ""} \
      ~{if (no_interval_selection) then "--NO_INTERVAL_SELECTION" else ""} \
      ~{if defined(read_depth_file) then ("--READ_DEPTH_FILE " +  '"' + read_depth_file + '"') else ""} \
      ~{if defined(graph_format) then ("--GRAPH_FORMAT " +  '"' + graph_format + '"') else ""} \
      ~{if (baf) then "--BAF" else ""} \
      ~{if defined(ratio_dev) then ("--RATIO_DEV " +  '"' + ratio_dev + '"') else ""} \
      ~{if defined(min_frac) then ("--MIN_FRAC " +  '"' + min_frac + '"') else ""} \
      ~{if (no_clustering) then "--NO_CLUSTERING" else ""}
  >>>
  parameter_meta {
    tumor_file: "File containing allelic counts for tumor sample SNPs."
    normal_file: "File containing allelic counts for normal samlpe SNPs."
    number_of_subpopulations: "Number of subpopulations"
    max_k: "The maximum value allowed for entries in C"
    tau: "Expected number of copies in normal genome"
    dir: "Directory where result file is written to"
    output_prefix: "Prefix for output files created. By default, it will\\nbe the beginning of the input file name (i.e.if input\\nfilename were example.input, output filed would be\\nexample.output and example.withbounds)"
    max_normal: "The maximum fraction to consider for normal. Only\\nenforced for n=2"
    num_processes: "The number of processes to be used"
    num_intervals: "The maximum number of intervals used by automatic\\ninterval selection."
    bound_heuristic: ""
    normal_bound_heuristic: ""
    heuristic_lb: ""
    heuristic_ub: ""
    bounds_only: ""
    no_multi_event: ""
    results: ""
    force: ""
    get_values: ""
    no_interval_selection: ""
    read_depth_file: ""
    graph_format: "Options are .pdf, .jpg, .png, .eps"
    baf: "Option to run the BAF model."
    ratio_dev: "The deviation away from 1.0 that a ratio must be to be\\nconsidered a potential copy number aberration."
    min_frac: "The minimum fraction of the genome that must have a\\npotential copy number aberration to be a valid sample\\nfor THetA analysis."
    no_clustering: "Option to run THetA without clustering."
  }
  output {
    File out_stdout = stdout()
  }
}