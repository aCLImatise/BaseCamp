class: CommandLineTool
id: collectl.cwl
inputs:
- id: count
  doc: count      collect this number of samples and exit
  type: boolean
  inputBinding:
    prefix: --count
- id: filename
  doc: file       name of directory/file to write to
  type: boolean
  inputBinding:
    prefix: --filename
- id: interval
  doc: int        collection interval in seconds [default=1]
  type: boolean
  inputBinding:
    prefix: --interval
- id: options
  doc: options    misc formatting options, --showoptions for all d|D - include date
    in output T - include time in output z - turn off compression of plot files
  type: boolean
  inputBinding:
    prefix: --options
- id: playback
  doc: file       playback results from 'file' (be sure to quote if wild carded) or
    the shell might mess it up
  type: boolean
  inputBinding:
    prefix: --playback
- id: plot
  doc: generate output in 'plot' format
  type: boolean
  inputBinding:
    prefix: --plot
- id: subsys
  doc: subsys     specify one or more subsystems [default=cdn]
  type: boolean
  inputBinding:
    prefix: --subsys
- id: verbose
  doc: display output in verbose format (automatically selected when brief doesn't
    make sense)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: show_defs
  doc: print operational defaults
  type: boolean
  inputBinding:
    prefix: --showdefs
- id: help_extend
  doc: extended help, more details descriptions too
  type: boolean
  inputBinding:
    prefix: --helpextend
- id: help_all
  doc: shows all help concatenated together
  type: boolean
  inputBinding:
    prefix: --helpall
- id: show_options
  doc: show all the options
  type: boolean
  inputBinding:
    prefix: --showoptions
- id: show_subsys
  doc: show all the subsystems
  type: boolean
  inputBinding:
    prefix: --showsubsys
- id: show_sub_opts
  doc: show all subsystem specific options
  type: boolean
  inputBinding:
    prefix: --showsubopts
- id: show_top_opts
  doc: show --top options
  type: boolean
  inputBinding:
    prefix: --showtopopts
- id: show_header
  doc: show file header that 'would be' generated
  type: boolean
  inputBinding:
    prefix: --showheader
- id: show_col_headers
  doc: show column headers that 'would be' generated
  type: boolean
  inputBinding:
    prefix: --showcolheaders
- id: shows_lab_aliases
  doc: for SLUB allocator, show non-root aliases
  type: boolean
  inputBinding:
    prefix: --showslabaliases
- id: show_roots_labs
  doc: same as --showslabaliases but use 'root' names
  type: boolean
  inputBinding:
    prefix: --showrootslabs
outputs: []
cwlVersion: v1.1
baseCommand:
- collectl
