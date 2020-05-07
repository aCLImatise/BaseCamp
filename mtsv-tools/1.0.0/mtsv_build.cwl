class: CommandLineTool
id: mtsv_build.cwl
inputs:
- id: v
  doc: Include this flag to trigger debug-level logging.
  type: boolean
  inputBinding:
    prefix: -v
- id: fast_a
  doc: Path to FASTA database file.
  type: string
  inputBinding:
    prefix: --fasta
- id: sample_interval
  doc: 'Sampling interval for index generation. Smaller = more memory usage, slightly  faster
    queries. Larger = less memory usage slightly slower queries. [default: 32]'
  type: string
  inputBinding:
    prefix: --sample-interval
- id: index
  doc: Absolute path to mtsv index file.
  type: string
  inputBinding:
    prefix: --index
outputs: []
cwlVersion: v1.1
baseCommand:
- mtsv-build
