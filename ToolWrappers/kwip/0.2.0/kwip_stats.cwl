class: CommandLineTool
id: kwip_stats.cwl
inputs:
- id: in_threads
  doc: Number of threads to utilise. [default N_CPUS]
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_t_about
  doc: Output for tab-delimited sum table. [default stdout]
  type: boolean
  inputBinding:
    prefix: --tabout
- id: in_verbose
  doc: Increase verbosity. May or may not acutally do anything.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: Execute silently but for errors.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_hashes
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
- kwip-stats
