version 1.0

task Beast {
  input {
    String? verbose
    File? warnings
    File? strict
    String? window
    String? options
    File? working
    Int? seed
    String? prefix
    String? overwrite
    Int? errors
    Int? threads
    String? java
    Int? tests
    Float? threshold
    String? adaptation_off
    Float? adaptation_target
    String? beagle
    String? beagle_auto
    String? beagle_info
    String? beagle_order
    String? beagle_instances
    String? beagle_multi_partition
    String? beagle_cpu
    String? beagle_gpu
    String? beagle_sse
    String? beagle_sse_off
    String? beagle_threading_off
    Int? beagle_thread_count
    String? beagle_cuda
    String? beagle_open_cl
    String? beagle_single
    String? beagle_double
    String? beagle_async
    String? beagle_scaling
    String? beagle_delay_scaling_off
    String? beagle_rescale
    String? mpi
    Directory? particles
    Int? mc_three_chains
    Int? mc_three_delta
    Int? mc_three_temperatures
    Int? mc_three_swap
    File? load_state
    String? save_stem
    File? save_at
    File? save_every
    File? save_state
    String? force_resume
    File? citations_file
    String? version
    File? input_file_name
  }
  command <<<
    beast \
      ~{input_file_name} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(warnings) then ("-warnings " +  '"' + warnings + '"') else ""} \
      ~{if defined(strict) then ("-strict " +  '"' + strict + '"') else ""} \
      ~{if defined(window) then ("-window " +  '"' + window + '"') else ""} \
      ~{if defined(options) then ("-options " +  '"' + options + '"') else ""} \
      ~{if defined(working) then ("-working " +  '"' + working + '"') else ""} \
      ~{if defined(seed) then ("-seed " +  '"' + seed + '"') else ""} \
      ~{if defined(prefix) then ("-prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(overwrite) then ("-overwrite " +  '"' + overwrite + '"') else ""} \
      ~{if defined(errors) then ("-errors " +  '"' + errors + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(java) then ("-java " +  '"' + java + '"') else ""} \
      ~{if defined(tests) then ("-tests " +  '"' + tests + '"') else ""} \
      ~{if defined(threshold) then ("-threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(adaptation_off) then ("-adaptation_off " +  '"' + adaptation_off + '"') else ""} \
      ~{if defined(adaptation_target) then ("-adaptation_target " +  '"' + adaptation_target + '"') else ""} \
      ~{if defined(beagle) then ("-beagle " +  '"' + beagle + '"') else ""} \
      ~{if defined(beagle_auto) then ("-beagle_auto " +  '"' + beagle_auto + '"') else ""} \
      ~{if defined(beagle_info) then ("-beagle_info " +  '"' + beagle_info + '"') else ""} \
      ~{if defined(beagle_order) then ("-beagle_order " +  '"' + beagle_order + '"') else ""} \
      ~{if defined(beagle_instances) then ("-beagle_instances " +  '"' + beagle_instances + '"') else ""} \
      ~{if defined(beagle_multi_partition) then ("-beagle_multipartition " +  '"' + beagle_multi_partition + '"') else ""} \
      ~{if defined(beagle_cpu) then ("-beagle_CPU " +  '"' + beagle_cpu + '"') else ""} \
      ~{if defined(beagle_gpu) then ("-beagle_GPU " +  '"' + beagle_gpu + '"') else ""} \
      ~{if defined(beagle_sse) then ("-beagle_SSE " +  '"' + beagle_sse + '"') else ""} \
      ~{if defined(beagle_sse_off) then ("-beagle_SSE_off " +  '"' + beagle_sse_off + '"') else ""} \
      ~{if defined(beagle_threading_off) then ("-beagle_threading_off " +  '"' + beagle_threading_off + '"') else ""} \
      ~{if defined(beagle_thread_count) then ("-beagle_thread_count " +  '"' + beagle_thread_count + '"') else ""} \
      ~{if defined(beagle_cuda) then ("-beagle_cuda " +  '"' + beagle_cuda + '"') else ""} \
      ~{if defined(beagle_open_cl) then ("-beagle_opencl " +  '"' + beagle_open_cl + '"') else ""} \
      ~{if defined(beagle_single) then ("-beagle_single " +  '"' + beagle_single + '"') else ""} \
      ~{if defined(beagle_double) then ("-beagle_double " +  '"' + beagle_double + '"') else ""} \
      ~{if defined(beagle_async) then ("-beagle_async " +  '"' + beagle_async + '"') else ""} \
      ~{if defined(beagle_scaling) then ("-beagle_scaling " +  '"' + beagle_scaling + '"') else ""} \
      ~{if defined(beagle_delay_scaling_off) then ("-beagle_delay_scaling_off " +  '"' + beagle_delay_scaling_off + '"') else ""} \
      ~{if defined(beagle_rescale) then ("-beagle_rescale " +  '"' + beagle_rescale + '"') else ""} \
      ~{if defined(mpi) then ("-mpi " +  '"' + mpi + '"') else ""} \
      ~{if defined(particles) then ("-particles " +  '"' + particles + '"') else ""} \
      ~{if defined(mc_three_chains) then ("-mc3_chains " +  '"' + mc_three_chains + '"') else ""} \
      ~{if defined(mc_three_delta) then ("-mc3_delta " +  '"' + mc_three_delta + '"') else ""} \
      ~{if defined(mc_three_temperatures) then ("-mc3_temperatures " +  '"' + mc_three_temperatures + '"') else ""} \
      ~{if defined(mc_three_swap) then ("-mc3_swap " +  '"' + mc_three_swap + '"') else ""} \
      ~{if defined(load_state) then ("-load_state " +  '"' + load_state + '"') else ""} \
      ~{if defined(save_stem) then ("-save_stem " +  '"' + save_stem + '"') else ""} \
      ~{if defined(save_at) then ("-save_at " +  '"' + save_at + '"') else ""} \
      ~{if defined(save_every) then ("-save_every " +  '"' + save_every + '"') else ""} \
      ~{if defined(save_state) then ("-save_state " +  '"' + save_state + '"') else ""} \
      ~{if defined(force_resume) then ("-force_resume " +  '"' + force_resume + '"') else ""} \
      ~{if defined(citations_file) then ("-citations_file " +  '"' + citations_file + '"') else ""} \
      ~{if defined(version) then ("-version " +  '"' + version + '"') else ""}
  >>>
  parameter_meta {
    verbose: "verbose XML parsing messages"
    warnings: "warning messages about BEAST XML file"
    strict: "on non-conforming BEAST XML file"
    window: "a console window"
    options: "an options dialog"
    working: "working directory to input file's directory"
    seed: "a random number generator seed"
    prefix: "a prefix for all output log filenames"
    overwrite: "overwriting of log files"
    errors: "maximum number of numerical errors before stopping"
    threads: "number of computational threads to use (default auto)"
    java: "Java only, no native implementations"
    tests: "number of full evaluation tests to perform (default 1000)"
    threshold: "evaluation test threshold (default 0.1)"
    adaptation_off: "'t adapt operator sizes"
    adaptation_target: "acceptance rate for adaptive operators (default 0.234)"
    beagle: "BEAGLE library if available (default on)"
    beagle_auto: ": automatically select fastest resource for analysis"
    beagle_info: ": show information on available resources"
    beagle_order: ": set order of resource use"
    beagle_instances: ": divide site patterns amongst instances"
    beagle_multi_partition: ": use multipartition extensions if available (default auto)"
    beagle_cpu: ": use CPU instance"
    beagle_gpu: ": use GPU instance if available"
    beagle_sse: ": use SSE extensions if available"
    beagle_sse_off: ": turn off use of SSE extensions"
    beagle_threading_off: ": turn off auto threading for a CPU instance"
    beagle_thread_count: ": manually set number of threads for a CPU instance"
    beagle_cuda: ": use CUDA parallization if available"
    beagle_open_cl: ": use OpenCL parallization if available"
    beagle_single: ": use single precision if available"
    beagle_double: ": use double precision if available"
    beagle_async: ": use asynchronous kernels if available"
    beagle_scaling: ": specify scaling scheme to use"
    beagle_delay_scaling_off: ": don't wait until underflow for scaling option"
    beagle_rescale: ": frequency of rescaling (dynamic scaling only)"
    mpi: "MPI rank to label output"
    particles: "a folder of particle start states"
    mc_three_chains: "of chains"
    mc_three_delta: "increment parameter"
    mc_three_temperatures: "comma-separated list of the hot chain temperatures"
    mc_three_swap: "at which chains temperatures will be swapped"
    load_state: "a filename to load a saved state from"
    save_stem: "a stem for the filenames to save states to"
    save_at: "a state at which to save a state file"
    save_every: "a frequency to save the state file"
    save_state: "a filename to save state to"
    force_resume: "resuming from a saved state"
    citations_file: "a filename to write a citation list to"
    version: "the version and credits and stop"
    input_file_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}