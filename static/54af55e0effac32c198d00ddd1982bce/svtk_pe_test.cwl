class: CommandLineTool
id: ../../../svtk_pe_test.cwl
inputs:
- id: window_out
  doc: Window outside breakpoint to query for discordant pairs. [500]
  type: string
  inputBinding:
    prefix: --window-out
- id: window_in
  doc: Window inside breakpoint to query for discordant pairs. [50]
  type: string
  inputBinding:
    prefix: --window-in
- id: background
  doc: Number of background samples to sample for PE evidence. [160]
  type: string
  inputBinding:
    prefix: --background
- id: samples
  doc: Whitelist of samples to restrict testing to.
  type: string
  inputBinding:
    prefix: --samples
- id: index
  doc: Tabix index of discordant pair file. Required if discordant pair file is hosted
    remotely.
  type: string
  inputBinding:
    prefix: --index
- id: median_file
  doc: Median coverage statistics for each library (optional). If provided, each sample's
    split counts will be normalized accordingly. Same format as RdTest, one column
    per sample.
  type: string
  inputBinding:
    prefix: --medianfile
- id: log
  doc: Print progress log to stderr.
  type: boolean
  inputBinding:
    prefix: --log
- id: vcf
  doc: Variants.
  type: string
  inputBinding:
    position: 0
- id: disc
  doc: Table of discordant pair coordinates.
  type: string
  inputBinding:
    position: 1
- id: f_out
  doc: Output table of PE counts.
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- svtk
- pe-test
