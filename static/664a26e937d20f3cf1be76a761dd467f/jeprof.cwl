class: CommandLineTool
id: jeprof.cwl
inputs:
- id: je_prof_tmpdir
  doc: Profiles directory. Defaults to $HOME/jeprof
  type: string
  inputBinding:
    position: 0
- id: je_prof_tools
  doc: Prefix for object tools pathnames
  type: string
  inputBinding:
    position: 1
- id: cum
  doc: Sort by cumulative data
  type: boolean
  inputBinding:
    prefix: --cum
- id: base
  doc: Subtract <base> from <profile> before display
  type: string
  inputBinding:
    prefix: --base
- id: interactive
  doc: Run in interactive mode (interactive "help" gives help) [default]
  type: boolean
  inputBinding:
    prefix: --interactive
- id: seconds
  doc: Length of time for dynamic profiles [default=30 secs]
  type: string
  inputBinding:
    prefix: --seconds
- id: add_lib
  doc: Read additional symbols and line info from the given library
  type: File
  inputBinding:
    prefix: --add_lib
- id: lib_prefix
  doc: Comma separated list of library path prefixes
  type: string
  inputBinding:
    prefix: --lib_prefix
- id: addresses
  doc: Report at address level
  type: boolean
  inputBinding:
    prefix: --addresses
- id: lines
  doc: Report at source line level
  type: boolean
  inputBinding:
    prefix: --lines
- id: functions
  doc: Report at function level [default]
  type: boolean
  inputBinding:
    prefix: --functions
- id: files
  doc: Report at source file level
  type: boolean
  inputBinding:
    prefix: --files
- id: text
  doc: Generate text report
  type: boolean
  inputBinding:
    prefix: --text
- id: call_grind
  doc: Generate callgrind format to stdout
  type: boolean
  inputBinding:
    prefix: --callgrind
- id: gv
  doc: Generate Postscript and display
  type: boolean
  inputBinding:
    prefix: --gv
- id: evince
  doc: Generate PDF and display
  type: boolean
  inputBinding:
    prefix: --evince
- id: web
  doc: Generate SVG and display
  type: boolean
  inputBinding:
    prefix: --web
- id: list
  doc: Generate source listing of matching routines
  type: string
  inputBinding:
    prefix: --list
- id: dis_asm
  doc: Generate disassembly of matching routines
  type: string
  inputBinding:
    prefix: --disasm
- id: symbols
  doc: Print demangled symbol names found at given addresses
  type: boolean
  inputBinding:
    prefix: --symbols
- id: dot
  doc: Generate DOT file to stdout
  type: boolean
  inputBinding:
    prefix: --dot
- id: ps
  doc: Generate Postcript to stdout
  type: boolean
  inputBinding:
    prefix: --ps
- id: pdf
  doc: Generate PDF to stdout
  type: boolean
  inputBinding:
    prefix: --pdf
- id: svg
  doc: Generate SVG to stdout
  type: boolean
  inputBinding:
    prefix: --svg
- id: gif
  doc: Generate GIF to stdout
  type: boolean
  inputBinding:
    prefix: --gif
- id: raw
  doc: Generate symbolized jeprof data (useful with remote fetch)
  type: boolean
  inputBinding:
    prefix: --raw
- id: in_use_space
  doc: Display in-use (mega)bytes [default]
  type: boolean
  inputBinding:
    prefix: --inuse_space
- id: in_use_objects
  doc: Display in-use objects
  type: boolean
  inputBinding:
    prefix: --inuse_objects
- id: alloc_space
  doc: Display allocated (mega)bytes
  type: boolean
  inputBinding:
    prefix: --alloc_space
- id: alloc_objects
  doc: Display allocated objects
  type: boolean
  inputBinding:
    prefix: --alloc_objects
- id: show_bytes
  doc: Display space in bytes
  type: boolean
  inputBinding:
    prefix: --show_bytes
- id: drop_negative
  doc: Ignore negative differences
  type: boolean
  inputBinding:
    prefix: --drop_negative
- id: total_delay
  doc: Display total delay at each region [default]
  type: boolean
  inputBinding:
    prefix: --total_delay
- id: contentions
  doc: Display number of delays at each region
  type: boolean
  inputBinding:
    prefix: --contentions
- id: mean_delay
  doc: Display mean delay at each region
  type: boolean
  inputBinding:
    prefix: --mean_delay
- id: node_count
  doc: Show at most so many nodes [default=80]
  type: string
  inputBinding:
    prefix: --nodecount
- id: node_fraction
  doc: Hide nodes below <f>*total [default=.005]
  type: string
  inputBinding:
    prefix: --nodefraction
- id: edge_fraction
  doc: Hide edges below <f>*total [default=.001]
  type: string
  inputBinding:
    prefix: --edgefraction
- id: max_degree
  doc: Max incoming/outgoing edges per node [default=8]
  type: string
  inputBinding:
    prefix: --maxdegree
- id: focus
  doc: Focus on backtraces with nodes matching <regexp>
  type: string
  inputBinding:
    prefix: --focus
- id: thread
  doc: Show profile for thread <n>
  type: string
  inputBinding:
    prefix: --thread
- id: ignore
  doc: Ignore backtraces with nodes matching <regexp>
  type: string
  inputBinding:
    prefix: --ignore
- id: scale
  doc: Set GV scaling [default=0]
  type: string
  inputBinding:
    prefix: --scale
- id: heap_check
  doc: Make nodes with non-0 object counts (i.e. direct leak generators) more visible
  type: boolean
  inputBinding:
    prefix: --heapcheck
- id: retain
  doc: Retain only nodes that match <regexp>
  type: string
  inputBinding:
    prefix: --retain
- id: exclude
  doc: Exclude all nodes that match <regexp>
  type: string
  inputBinding:
    prefix: --exclude
- id: tools
  doc: =<prefix or binary:fullpath>[,...]   $PATH for object tool pathnames
  type: boolean
  inputBinding:
    prefix: --tools
- id: test
  doc: Run unit tests
  type: boolean
  inputBinding:
    prefix: --test
outputs: []
cwlVersion: v1.1
baseCommand:
- jeprof
