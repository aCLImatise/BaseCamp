class: CommandLineTool
id: ../../../singularity.cwl
inputs:
- id: in_debug
  doc: print debugging information (highest verbosity)
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_no_color
  doc: print without color output (default False)
  type: boolean
  inputBinding:
    prefix: --nocolor
- id: in_quiet
  doc: suppress normal output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_silent
  doc: only print errors
  type: boolean
  inputBinding:
    prefix: --silent
- id: in_verbose
  doc: print additional information
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- singularity
