class: CommandLineTool
id: ../../../mtsv_binner.cwl
inputs:
- id: in_include_flag_trigger
  doc: Include this flag to trigger debug-level logging.
  type: boolean
  inputBinding:
    prefix: -v
- id: in_edits
  doc: 'Edit distance to tolerate in matched reference sites [default: 3]'
  type: long
  inputBinding:
    prefix: --edits
- id: in_fast_a
  doc: Absolute path to FASTA query file.
  type: File
  inputBinding:
    prefix: --fasta
- id: in_index
  doc: Absolute path to mtsv index file.
  type: File
  inputBinding:
    prefix: --index
- id: in_max_hits
  doc: 'Skip seeds with more than MAX_HITS hits. [default: 20000]'
  type: long
  inputBinding:
    prefix: --max-hits
- id: in_min_seeds
  doc: "Set to override minimum number of seeds to perform alignment of a candidate\
    \ site.\n[default: 2]"
  type: long
  inputBinding:
    prefix: --min-seeds
- id: in_threads
  doc: 'Number of worker threads to spawn. [default: 4]'
  type: long
  inputBinding:
    prefix: --threads
- id: in_results
  doc: Path to write results file to.
  type: File
  inputBinding:
    prefix: --results
- id: in_seed_gap
  doc: 'Set to override gap between seeds used for initial exact match. [default:
    3]'
  type: long
  inputBinding:
    prefix: --seed-gap
- id: in_seed_size
  doc: 'Set to override inital exact match query size. [default: 20]'
  type: long
  inputBinding:
    prefix: --seed-size
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mtsv-binner
