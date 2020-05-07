class: CommandLineTool
id: mtsv_binner.cwl
inputs:
- id: v
  doc: Include this flag to trigger debug-level logging.
  type: boolean
  inputBinding:
    prefix: -v
- id: edits
  doc: 'Edit distance to tolerate in matched reference sites [default: 3]'
  type: string
  inputBinding:
    prefix: --edits
- id: fast_a
  doc: Absolute path to FASTA query file.
  type: string
  inputBinding:
    prefix: --fasta
- id: index
  doc: Absolute path to mtsv index file.
  type: string
  inputBinding:
    prefix: --index
- id: min_seeds
  doc: 'Set to override minimum number of seeds to perform alignment of a candidate
    site. [default: 2]'
  type: long
  inputBinding:
    prefix: --min-seeds
- id: threads
  doc: 'Number of worker threads to spawn. [default: 4]'
  type: string
  inputBinding:
    prefix: --threads
- id: results
  doc: Path to write results file to.
  type: string
  inputBinding:
    prefix: --results
- id: seed_gap
  doc: 'Set to override gap between seeds used for initial exact match. [default:
    3]'
  type: string
  inputBinding:
    prefix: --seed-gap
- id: seed_size
  doc: 'Set to override inital exact match query size. [default: 20]'
  type: string
  inputBinding:
    prefix: --seed-size
outputs: []
cwlVersion: v1.1
baseCommand:
- mtsv-binner
