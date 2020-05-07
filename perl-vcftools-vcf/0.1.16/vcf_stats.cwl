class: CommandLineTool
id: vcf_stats.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file_vcf_gz
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: dump
  doc: Take an existing dump file and recreate the files (works with -p)
  type: File
  inputBinding:
    prefix: --dump
- id: filters
  doc: <filter1,filter2>             List of filters such as column/field (any value),
    column/field=bin:max (cluster in bins),column/field=value (exact value)
  type: boolean
  inputBinding:
    prefix: --filters
- id: prefix
  doc: <dir/string>                   Prefix of output files. If slashes are present,
    directories will be created.
  type: boolean
  inputBinding:
    prefix: --prefix
- id: samples
  doc: Process only the listed samples, - for none. Excluding unwanted samples may
    increase performance considerably.
  type: string
  inputBinding:
    prefix: --samples
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf-stats
