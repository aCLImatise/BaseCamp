version 1.0

task Mono {
  input {
    Boolean? aot
    Boolean? debug
    String? debugger_agent
    Boolean? profile
    Boolean? trace
    Boolean? jit_map
    Boolean? help_devel
    File? config
    Boolean? verbose
    String? use_version_runtime
    String? optimize
    Boolean? security
    String? attach
    Boolean? no_llvm
    Boolean? gc
  }
  command <<<
    mono \
      ~{if (aot) then "--aot" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(debugger_agent) then ("--debugger-agent " +  '"' + debugger_agent + '"') else ""} \
      ~{if (profile) then "--profile" else ""} \
      ~{if (trace) then "--trace" else ""} \
      ~{if (jit_map) then "--jitmap" else ""} \
      ~{if (help_devel) then "--help-devel" else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(use_version_runtime) then ("--runtime " +  '"' + use_version_runtime + '"') else ""} \
      ~{if defined(optimize) then ("--optimize " +  '"' + optimize + '"') else ""} \
      ~{if (security) then "--security" else ""} \
      ~{if defined(attach) then ("--attach " +  '"' + attach + '"') else ""} \
      ~{if (no_llvm) then "--nollvm" else ""} \
      ~{if (gc) then "--gc" else ""}
  >>>
  parameter_meta {
    aot: "[=<options>]      Compiles the assembly to native code"
    debug: "[=<options>]    Enable debugging support, use --help-debug for details"
    debugger_agent: "Enable the debugger agent"
    profile: "[=profiler]   Runs in profiling mode with the specified profiler module"
    trace: "[=EXPR]         Enable tracing, use --help-trace for details"
    jit_map: "Output a jit method map to /tmp/perf-PID.map"
    help_devel: "Shows more options available to developers"
    config: "Loads FILE as the Mono config"
    verbose: "Increases the verbosity level"
    use_version_runtime: "Use the VERSION runtime, instead of autodetecting"
    optimize: "Turns on or off a specific optimization\\nUse --list-opt to get a list of optimizations"
    security: "[=mode]      Turns on the unsupported security manager (off by default)\\nmode is one of cas, core-clr, verifiable or validil"
    attach: "Pass OPTIONS to the attach agent in the runtime.\\nCurrently the only supported option is 'disable'."
    no_llvm: "Controls whenever the runtime uses LLVM to compile code."
    gc: "=[sgen,boehm]      Select SGen or Boehm GC (runs mono or mono-sgen)"
  }
  output {
    File out_stdout = stdout()
  }
}