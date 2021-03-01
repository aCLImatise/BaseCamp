version 1.0

task Julia {
  input {
    Boolean? project
    File? sys_image
    String? home
    Boolean? startup_file
    Boolean? handle_signals
    Boolean? sys_image_native_code
    Boolean? compiled_modules
    String? eval
    String? print
    File? load
    Boolean? procs
    File? machine_file
    Boolean? interactive_mode_repl
    Boolean? quiet
    Boolean? banner
    Boolean? color
    Boolean? history_file
    Boolean? dep_warn
    Boolean? warn_overwrite
    String? cpu_target
    String? optimize
    Int? enable_set_level
    Boolean? inline
    Boolean? check_bounds
    String? math_mode
    Boolean? code_coverage
    Boolean? track_allocation
  }
  command <<<
    julia \
      ~{if (project) then "--project" else ""} \
      ~{if defined(sys_image) then ("--sysimage " +  '"' + sys_image + '"') else ""} \
      ~{if defined(home) then ("--home " +  '"' + home + '"') else ""} \
      ~{if (startup_file) then "--startup-file" else ""} \
      ~{if (handle_signals) then "--handle-signals" else ""} \
      ~{if (sys_image_native_code) then "--sysimage-native-code" else ""} \
      ~{if (compiled_modules) then "--compiled-modules" else ""} \
      ~{if defined(eval) then ("--eval " +  '"' + eval + '"') else ""} \
      ~{if defined(print) then ("--print " +  '"' + print + '"') else ""} \
      ~{if defined(load) then ("--load " +  '"' + load + '"') else ""} \
      ~{if (procs) then "--procs" else ""} \
      ~{if defined(machine_file) then ("--machine-file " +  '"' + machine_file + '"') else ""} \
      ~{if (interactive_mode_repl) then "-i" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (banner) then "--banner" else ""} \
      ~{if (color) then "--color" else ""} \
      ~{if (history_file) then "--history-file" else ""} \
      ~{if (dep_warn) then "--depwarn" else ""} \
      ~{if (warn_overwrite) then "--warn-overwrite" else ""} \
      ~{if defined(cpu_target) then ("--cpu-target " +  '"' + cpu_target + '"') else ""} \
      ~{if defined(optimize) then ("--optimize " +  '"' + optimize + '"') else ""} \
      ~{if defined(enable_set_level) then ("-g " +  '"' + enable_set_level + '"') else ""} \
      ~{if (inline) then "--inline" else ""} \
      ~{if (check_bounds) then "--check-bounds" else ""} \
      ~{if defined(math_mode) then ("--math-mode " +  '"' + math_mode + '"') else ""} \
      ~{if (code_coverage) then "--code-coverage" else ""} \
      ~{if (track_allocation) then "--track-allocation" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    project: "[={<dir>|@.}]    Set <dir> as the home project/environment"
    sys_image: "Start up with the given system image file"
    home: "Set location of `julia` executable"
    startup_file: "={yes|no}   Load `~/.julia/config/startup.jl`"
    handle_signals: "={yes|no} Enable or disable Julia's default signal handlers"
    sys_image_native_code: "={yes|no}\\nUse native code from system image if available"
    compiled_modules: "={yes|no}\\nEnable or disable incremental precompilation of modules"
    eval: "Evaluate <expr>"
    print: "Evaluate <expr> and display the result"
    load: "Load <file> immediately on all processors"
    procs: "{N|auto}      Integer value N launches N additional local worker processes\\n\\\"auto\\\" launches as many workers as the number of local CPU threads (logical cores)"
    machine_file: "Run processes on hosts listed in <file>"
    interactive_mode_repl: "Interactive mode; REPL runs and isinteractive() is true"
    quiet: "Quiet startup: no banner, suppress REPL warnings"
    banner: "={yes|no|auto}    Enable or disable startup banner"
    color: "={yes|no|auto}     Enable or disable color text"
    history_file: "={yes|no}   Load or save history"
    dep_warn: "={yes|no|error}  Enable or disable syntax and method deprecation warnings (\\\"error\\\" turns warnings into errors)"
    warn_overwrite: "={yes|no} Enable or disable method overwrite warnings"
    cpu_target: "Limit usage of CPU features up to <target>; set to \\\"help\\\" to see the available options"
    optimize: "Set the optimization level (default level is 2 if unspecified or 3 if used without a level)"
    enable_set_level: "Enable / Set the level of debug info generation (default level is 1 if unspecified or 2 if used without a level)"
    inline: "={yes|no}         Control whether inlining is permitted, including overriding @inline declarations"
    check_bounds: "={yes|no}   Emit bounds checks always or never (ignoring declarations)"
    math_mode: "Disallow or enable unsafe floating point optimizations (overrides @fastmath declaration)"
    code_coverage: "={none|user|all}, --code-coverage\\nCount executions of source lines (omitting setting is equivalent to \\\"user\\\")"
    track_allocation: "={none|user|all}, --track-allocation\\nCount bytes allocated by each source line\\n"
  }
  output {
    File out_stdout = stdout()
  }
}