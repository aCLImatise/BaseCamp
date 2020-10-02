class: CommandLineTool
id: mono_boehm.cwl
inputs:
- id: in_aot
  doc: '[=<options>]      Compiles the assembly to native code'
  type: boolean
  inputBinding:
    prefix: --aot
- id: in_debug
  doc: '[=<options>]    Enable debugging support, use --help-debug for details'
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_debugger_agent
  doc: Enable the debugger agent
  type: string
  inputBinding:
    prefix: --debugger-agent
- id: in_profile
  doc: '[=profiler]   Runs in profiling mode with the specified profiler module'
  type: boolean
  inputBinding:
    prefix: --profile
- id: in_trace
  doc: '[=EXPR]         Enable tracing, use --help-trace for details'
  type: boolean
  inputBinding:
    prefix: --trace
- id: in_jit_map
  doc: Output a jit method map to /tmp/perf-PID.map
  type: boolean
  inputBinding:
    prefix: --jitmap
- id: in_help_devel
  doc: Shows more options available to developers
  type: boolean
  inputBinding:
    prefix: --help-devel
- id: in_config
  doc: Loads FILE as the Mono config
  type: File
  inputBinding:
    prefix: --config
- id: in_verbose
  doc: Increases the verbosity level
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_runtime
  doc: Use the VERSION runtime, instead of autodetecting
  type: string
  inputBinding:
    prefix: --runtime
- id: in_optimize
  doc: "Turns on or off a specific optimization\nUse --list-opt to get a list of optimizations"
  type: string
  inputBinding:
    prefix: --optimize
- id: in_security
  doc: "[=mode]      Turns on the unsupported security manager (off by default)\n\
    mode is one of cas, core-clr, verifiable or validil"
  type: boolean
  inputBinding:
    prefix: --security
- id: in_attach
  doc: "Pass OPTIONS to the attach agent in the runtime.\nCurrently the only supported\
    \ option is 'disable'."
  type: string
  inputBinding:
    prefix: --attach
- id: in_no_llvm
  doc: Controls whenever the runtime uses LLVM to compile code.
  type: boolean
  inputBinding:
    prefix: --nollvm
- id: in_gc
  doc: =[sgen,boehm]      Select SGen or Boehm GC (runs mono or mono-sgen)
  type: boolean
  inputBinding:
    prefix: --gc
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mono-boehm
