#!/usr/bin/env cwl-runner

baseCommand:
- collectl
class: CommandLineTool
cwlVersion: v1.0
id: collectl
inputs:
- doc: count      collect this number of samples and exit
  id: count
  inputBinding:
    prefix: --count
  type: boolean
- doc: file       name of directory/file to write to
  id: filename
  inputBinding:
    prefix: --filename
  type: boolean
- doc: int        collection interval in seconds [default=1]
  id: interval
  inputBinding:
    prefix: --interval
  type: boolean
- doc: options    misc formatting options, --showoptions for all d|D - include date
    in output T - include time in output z - turn off compression of plot files
  id: options
  inputBinding:
    prefix: --options
  type: boolean
- doc: file       playback results from 'file' (be sure to quote if wild carded) or
    the shell might mess it up
  id: playback
  inputBinding:
    prefix: --playback
  type: boolean
- doc: generate output in 'plot' format
  id: plot
  inputBinding:
    prefix: --plot
  type: boolean
- doc: subsys     specify one or more subsystems [default=cdn]
  id: subsys
  inputBinding:
    prefix: --subsys
  type: boolean
- doc: display output in verbose format (automatically selected when brief doesn't
    make sense)
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: print operational defaults
  id: show_defs
  inputBinding:
    prefix: --showdefs
  type: boolean
- doc: extended help, more details descriptions too
  id: help_extend
  inputBinding:
    prefix: --helpextend
  type: boolean
- doc: shows all help concatenated together
  id: help_all
  inputBinding:
    prefix: --helpall
  type: boolean
- doc: show all the options
  id: show_options
  inputBinding:
    prefix: --showoptions
  type: boolean
- doc: show all the subsystems
  id: show_subsys
  inputBinding:
    prefix: --showsubsys
  type: boolean
- doc: show all subsystem specific options
  id: show_sub_opts
  inputBinding:
    prefix: --showsubopts
  type: boolean
- doc: show --top options
  id: show_top_opts
  inputBinding:
    prefix: --showtopopts
  type: boolean
- doc: show file header that 'would be' generated
  id: show_header
  inputBinding:
    prefix: --showheader
  type: boolean
- doc: show column headers that 'would be' generated
  id: show_col_headers
  inputBinding:
    prefix: --showcolheaders
  type: boolean
- doc: for SLUB allocator, show non-root aliases
  id: shows_lab_aliases
  inputBinding:
    prefix: --showslabaliases
  type: boolean
- doc: same as --showslabaliases but use 'root' names
  id: show_roots_labs
  inputBinding:
    prefix: --showrootslabs
  type: boolean
