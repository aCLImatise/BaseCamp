class: CommandLineTool
id: droptag.cwl
inputs:
- id: in_config
  doc: ': xml file with droptag parameters'
  type: File?
  inputBinding:
    prefix: --config
- id: in_log_prefix
  doc: ': logs prefix'
  type: string?
  inputBinding:
    prefix: --log-prefix
- id: in_name
  doc: ': alternative output base name'
  type: string?
  inputBinding:
    prefix: --name
- id: in_parallel
  doc: ': number of threads'
  type: long?
  inputBinding:
    prefix: --parallel
- id: in_save_reads_params
  doc: ': serialize reads parameters to save quality info'
  type: boolean?
  inputBinding:
    prefix: --save-reads-params
- id: in_save_stats
  doc: ': save stats to rds file'
  type: boolean?
  inputBinding:
    prefix: --save-stats
- id: in_reads_per_out_file
  doc: ': maximum number of reads per output file; (0 - unlimited). Overrides corresponding
    xml parameter.'
  type: File?
  inputBinding:
    prefix: --reads-per-out-file
- id: in_lib_tag
  doc: 'tag : (for IndropV3 with library tag only)'
  type: long?
  inputBinding:
    prefix: --lib-tag
- id: in_quiet
  doc: ': disable logs'
  type: boolean?
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_reads_per_out_file
  doc: ': maximum number of reads per output file; (0 - unlimited). Overrides corresponding
    xml parameter.'
  type: File?
  outputBinding:
    glob: $(inputs.in_reads_per_out_file)
hints: []
cwlVersion: v1.1
baseCommand:
- droptag
