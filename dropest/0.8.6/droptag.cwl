class: CommandLineTool
id: droptag.cwl
inputs:
- id: config
  doc: ': xml file with droptag parameters'
  type: File
  inputBinding:
    prefix: --config
- id: log_prefix
  doc: ': logs prefix'
  type: string
  inputBinding:
    prefix: --log-prefix
- id: name
  doc: ': alternative output base name'
  type: string
  inputBinding:
    prefix: --name
- id: parallel
  doc: ': number of threads'
  type: string
  inputBinding:
    prefix: --parallel
- id: save_reads_params
  doc: ': serialize reads parameters to save quality info'
  type: boolean
  inputBinding:
    prefix: --save-reads-params
- id: save_stats
  doc: ': save stats to rds file'
  type: boolean
  inputBinding:
    prefix: --save-stats
- id: reads_per_out_file
  doc: ': maximum number of reads per output file; (0 - unlimited). Overrides corresponding
    xml parameter.'
  type: boolean
  inputBinding:
    prefix: --reads-per-out-file
- id: lib_tag
  doc: 'tag : (for IndropV3 with library tag only)'
  type: string
  inputBinding:
    prefix: --lib-tag
- id: quiet
  doc: ': disable logs'
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- droptag
