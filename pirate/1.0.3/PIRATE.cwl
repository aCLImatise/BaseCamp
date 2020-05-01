#!/usr/bin/env cwl-runner

baseCommand:
- PIRATE
class: CommandLineTool
cwlVersion: v1.0
id: pirate
inputs:
- doc: ': no input (-i) directory specified.'
  id: error
  inputBinding:
    prefix: '- ERROR'
  type: boolean
- doc: 'number of threads/cores used by PIRATE [default: 2]'
  id: threads
  inputBinding:
    prefix: --threads
  type: boolean
- doc: switch off verbose
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: 'retain intermediate files [0 = none, 1 = retain pangenome  files (default
    - re-run using --pan-off), 2 = all]  '
  id: z
  inputBinding:
    prefix: -z
  type: boolean
- doc: check installation and run on example files
  id: check
  inputBinding:
    prefix: --check
  type: boolean
