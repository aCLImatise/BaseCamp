class: CommandLineTool
id: sambamba_subsample.cwl
inputs:
- id: type
  doc: '[fasthash]   Algorithm for subsampling (fasthash, default is none)'
  type: boolean
  inputBinding:
    prefix: --type
- id: max_cov
  doc: '[depth]   Maximum coverage (approx)'
  type: boolean
  inputBinding:
    prefix: --max-cov
- id: output
  doc: Set output file (default stdout)
  type: string
  inputBinding:
    prefix: --output
- id: remove
  doc: Remove over sampled reads from output
  type: boolean
  inputBinding:
    prefix: --remove
- id: logging
  doc: Set logging to debug|info|warning|critical -nyi
  type: string
  inputBinding:
    prefix: --logging
outputs: []
cwlVersion: v1.1
baseCommand:
- sambamba
- subsample
