class: CommandLineTool
id: svtk_pe_test.cwl
inputs:
- id: in_window_out
  doc: "Window outside breakpoint to query for discordant\npairs. [500]"
  type: long?
  inputBinding:
    prefix: --window-out
- id: in_window_in
  doc: "Window inside breakpoint to query for discordant\npairs. [50]"
  type: long?
  inputBinding:
    prefix: --window-in
- id: in_background
  doc: "Number of background samples to sample for PE\nevidence. [160]"
  type: long?
  inputBinding:
    prefix: --background
- id: in_samples
  doc: Whitelist of samples to restrict testing to.
  type: string?
  inputBinding:
    prefix: --samples
- id: in_index
  doc: "Tabix index of discordant pair file. Required if\ndiscordant pair file is\
    \ hosted remotely."
  type: File?
  inputBinding:
    prefix: --index
- id: in_median_file
  doc: "Median coverage statistics for each library\n(optional). If provided, each\
    \ sample's split counts\nwill be normalized accordingly. Same format as RdTest,\n\
    one column per sample."
  type: File?
  inputBinding:
    prefix: --medianfile
- id: in_log
  doc: Print progress log to stderr.
  type: boolean?
  inputBinding:
    prefix: --log
- id: in_vcf
  doc: Variants.
  type: string
  inputBinding:
    position: 0
- id: in_disc
  doc: Table of discordant pair coordinates.
  type: string
  inputBinding:
    position: 1
- id: in_f_out
  doc: Output table of PE counts.
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- svtk
- pe-test
