class: CommandLineTool
id: guess_baits.py.cwl
inputs:
- id: sample_bams
  doc: Sample BAM file(s) to test for target coverage.
  type: string
  inputBinding:
    position: 0
- id: output
  doc: The inferred targets, in BED format.
  type: File
  inputBinding:
    prefix: --output
- id: coverage
  doc: Filename to output average coverage depths in .cnn format.
  type: File
  inputBinding:
    prefix: --coverage
- id: p
  doc: '[CPU], --processes [CPU] Number of subprocesses to segment in parallel. If
    given without an argument, use the maximum number of available CPUs. [Default:
    use 1 process]'
  type: boolean
  inputBinding:
    prefix: -p
- id: targets
  doc: Potentially targeted genomic regions, e.g. all known exons in the reference
    genome, in BED format. Each of these regions will be tested as a whole for enrichment.
    (Faster method)
  type: string
  inputBinding:
    prefix: --targets
- id: access
  doc: Sequencing-accessible genomic regions (e.g. from 'cnvkit.py access'), or known
    genic regions in the reference genome, in BED format. All bases will be tested
    for enrichment. (Slower method)
  type: string
  inputBinding:
    prefix: --access
- id: min_depth
  doc: 'Minimum sequencing read depth to accept as captured. [Default: 5]'
  type: string
  inputBinding:
    prefix: --min-depth
- id: min_gap
  doc: 'Merge regions separated by gaps smaller than this. [Default: 25]'
  type: string
  inputBinding:
    prefix: --min-gap
- id: min_length
  doc: 'Minimum region length to accept as captured. [Default: 50]'
  type: string
  inputBinding:
    prefix: --min-length
outputs: []
cwlVersion: v1.1
baseCommand:
- guess_baits.py
