class: CommandLineTool
id: julia.cwl
inputs:
- id: in_project
  doc: '[={<dir>|@.}]    Set <dir> as the home project/environment'
  type: boolean
  inputBinding:
    prefix: --project
- id: in_sys_image
  doc: Start up with the given system image file
  type: File
  inputBinding:
    prefix: --sysimage
- id: in_home
  doc: Set location of `julia` executable
  type: string
  inputBinding:
    prefix: --home
- id: in_startup_file
  doc: ={yes|no}   Load `~/.julia/config/startup.jl`
  type: boolean
  inputBinding:
    prefix: --startup-file
- id: in_handle_signals
  doc: ={yes|no} Enable or disable Julia's default signal handlers
  type: boolean
  inputBinding:
    prefix: --handle-signals
- id: in_sys_image_native_code
  doc: "={yes|no}\nUse native code from system image if available"
  type: boolean
  inputBinding:
    prefix: --sysimage-native-code
- id: in_compiled_modules
  doc: "={yes|no}\nEnable or disable incremental precompilation of modules"
  type: boolean
  inputBinding:
    prefix: --compiled-modules
- id: in_eval
  doc: Evaluate <expr>
  type: string
  inputBinding:
    prefix: --eval
- id: in_print
  doc: Evaluate <expr> and display the result
  type: string
  inputBinding:
    prefix: --print
- id: in_load
  doc: Load <file> immediately on all processors
  type: File
  inputBinding:
    prefix: --load
- id: in_procs
  doc: "{N|auto}      Integer value N launches N additional local worker processes\n\
    \"auto\" launches as many workers as the number of local CPU threads (logical\
    \ cores)"
  type: boolean
  inputBinding:
    prefix: --procs
- id: in_machine_file
  doc: Run processes on hosts listed in <file>
  type: File
  inputBinding:
    prefix: --machine-file
- id: in_interactive_mode_repl
  doc: Interactive mode; REPL runs and isinteractive() is true
  type: boolean
  inputBinding:
    prefix: -i
- id: in_quiet
  doc: 'Quiet startup: no banner, suppress REPL warnings'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_banner
  doc: ={yes|no|auto}    Enable or disable startup banner
  type: boolean
  inputBinding:
    prefix: --banner
- id: in_color
  doc: ={yes|no|auto}     Enable or disable color text
  type: boolean
  inputBinding:
    prefix: --color
- id: in_history_file
  doc: ={yes|no}   Load or save history
  type: boolean
  inputBinding:
    prefix: --history-file
- id: in_dep_warn
  doc: ={yes|no|error}  Enable or disable syntax and method deprecation warnings ("error"
    turns warnings into errors)
  type: boolean
  inputBinding:
    prefix: --depwarn
- id: in_warn_overwrite
  doc: ={yes|no} Enable or disable method overwrite warnings
  type: boolean
  inputBinding:
    prefix: --warn-overwrite
- id: in_cpu_target
  doc: Limit usage of CPU features up to <target>; set to "help" to see the available
    options
  type: string
  inputBinding:
    prefix: --cpu-target
- id: in_optimize
  doc: Set the optimization level (default level is 2 if unspecified or 3 if used
    without a level)
  type: string
  inputBinding:
    prefix: --optimize
- id: in_enable_set_level
  doc: Enable / Set the level of debug info generation (default level is 1 if unspecified
    or 2 if used without a level)
  type: long
  inputBinding:
    prefix: -g
- id: in_inline
  doc: ={yes|no}         Control whether inlining is permitted, including overriding
    @inline declarations
  type: boolean
  inputBinding:
    prefix: --inline
- id: in_check_bounds
  doc: ={yes|no}   Emit bounds checks always or never (ignoring declarations)
  type: boolean
  inputBinding:
    prefix: --check-bounds
- id: in_math_mode
  doc: Disallow or enable unsafe floating point optimizations (overrides @fastmath
    declaration)
  type: string
  inputBinding:
    prefix: --math-mode
- id: in_code_coverage
  doc: "={none|user|all}, --code-coverage\nCount executions of source lines (omitting\
    \ setting is equivalent to \"user\")"
  type: boolean
  inputBinding:
    prefix: --code-coverage
- id: in_track_allocation
  doc: "={none|user|all}, --track-allocation\nCount bytes allocated by each source\
    \ line\n"
  type: boolean
  inputBinding:
    prefix: --track-allocation
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- julia
