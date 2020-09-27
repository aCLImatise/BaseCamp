class: CommandLineTool
id: collectl.cwl
inputs:
- id: in_count
  doc: count      collect this number of samples and exit
  type: boolean
  inputBinding:
    prefix: --count
- id: in_filename
  doc: file       name of directory/file to write to
  type: boolean
  inputBinding:
    prefix: --filename
- id: in_interval
  doc: int        collection interval in seconds [default=1]
  type: boolean
  inputBinding:
    prefix: --interval
- id: in_options
  doc: "options    misc formatting options, --showoptions for all\nd|D - include date\
    \ in output\nT - include time in output\nz - turn off compression of plot files"
  type: boolean
  inputBinding:
    prefix: --options
- id: in_playback
  doc: "file       playback results from 'file' (be sure to quote\nif wild carded)\
    \ or the shell might mess it up"
  type: boolean
  inputBinding:
    prefix: --playback
- id: in_plot
  doc: generate output in 'plot' format
  type: boolean
  inputBinding:
    prefix: --plot
- id: in_subsys
  doc: subsys     specify one or more subsystems [default=cdn]
  type: boolean
  inputBinding:
    prefix: --subsys
- id: in_verbose
  doc: "display output in verbose format (automatically\nselected when brief doesn't\
    \ make sense)"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_show_defs
  doc: print operational defaults
  type: boolean
  inputBinding:
    prefix: --showdefs
- id: in_help_extend
  doc: extended help, more details descriptions too
  type: boolean
  inputBinding:
    prefix: --helpextend
- id: in_help_all
  doc: shows all help concatenated together
  type: boolean
  inputBinding:
    prefix: --helpall
- id: in_show_options
  doc: show all the options
  type: boolean
  inputBinding:
    prefix: --showoptions
- id: in_show_subsys
  doc: show all the subsystems
  type: boolean
  inputBinding:
    prefix: --showsubsys
- id: in_show_sub_opts
  doc: show all subsystem specific options
  type: boolean
  inputBinding:
    prefix: --showsubopts
- id: in_show_top_opts
  doc: show --top options
  type: boolean
  inputBinding:
    prefix: --showtopopts
- id: in_show_header
  doc: show file header that 'would be' generated
  type: boolean
  inputBinding:
    prefix: --showheader
- id: in_show_col_headers
  doc: show column headers that 'would be' generated
  type: boolean
  inputBinding:
    prefix: --showcolheaders
- id: in_shows_lab_aliases
  doc: for SLUB allocator, show non-root aliases
  type: boolean
  inputBinding:
    prefix: --showslabaliases
- id: in_show_roots_labs
  doc: same as --showslabaliases but use 'root' names
  type: boolean
  inputBinding:
    prefix: --showrootslabs
- id: in_switches
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- collectl
