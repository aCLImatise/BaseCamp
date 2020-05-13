class: CommandLineTool
id: picopore_test.cwl
inputs:
- id: input
  doc: list of directories or fast5 files to shrink
  type: string
  inputBinding:
    position: 0
- id: mode
  doc: choose compression mode
  type: string
  inputBinding:
    prefix: --mode
- id: revert
  doc: reverts files to original size (lossless modes only)
  type: boolean
  inputBinding:
    prefix: --revert
- id: no_fast_q
  doc: 'retain FASTQ data (raw mode only) (Default: --fastq)'
  type: boolean
  inputBinding:
    prefix: --no-fastq
- id: no_summary
  doc: 'retain summary data (raw mode only) (Default: --no- summary)'
  type: boolean
  inputBinding:
    prefix: --no-summary
- id: manual
  doc: manually remove only groups whose paths contain STR (raw mode only, regular
    expressions permitted, overrides defaults)
  type: string
  inputBinding:
    prefix: --manual
- id: y
  doc: skip confirm step
  type: boolean
  inputBinding:
    prefix: -y
- id: threads
  doc: 'number of threads (Default: 1)'
  type: long
  inputBinding:
    prefix: --threads
- id: prefix
  doc: add prefix to output files to prevent overwrite
  type: string
  inputBinding:
    prefix: --prefix
- id: no_skip_root
  doc: 'ignore files in root input directories for albacore realtime compression (Default:
    --no-skip-root)'
  type: boolean
  inputBinding:
    prefix: --no-skip-root
- id: print_every
  doc: 'print a dot every approximately INT files, or -1 to silence (Default: 100)'
  type: long
  inputBinding:
    prefix: --print-every
outputs: []
cwlVersion: v1.1
baseCommand:
- picopore-test
