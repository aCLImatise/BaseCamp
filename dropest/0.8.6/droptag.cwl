#!/usr/bin/env cwl-runner

baseCommand:
- droptag
class: CommandLineTool
cwlVersion: v1.0
id: droptag
inputs:
- doc: ': xml file with droptag parameters'
  id: config
  inputBinding:
    prefix: --config
  type: File
- doc: ': logs prefix'
  id: log_prefix
  inputBinding:
    prefix: --log-prefix
  type: string
- doc: ': alternative output base name'
  id: name
  inputBinding:
    prefix: --name
  type: string
- doc: ': number of threads'
  id: parallel
  inputBinding:
    prefix: --parallel
  type: string
- doc: ': serialize reads parameters to save quality info'
  id: save_reads_params
  inputBinding:
    prefix: --save-reads-params
  type: boolean
- doc: ': save stats to rds file'
  id: save_stats
  inputBinding:
    prefix: --save-stats
  type: boolean
- doc: ': maximum number of reads per output file; (0 - unlimited). Overrides corresponding
    xml parameter.'
  id: reads_per_out_file
  inputBinding:
    prefix: --reads-per-out-file
  type: boolean
- doc: 'tag : (for IndropV3 with library tag only)'
  id: lib_tag
  inputBinding:
    prefix: --lib-tag
  type: string
- doc: ': disable logs'
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
