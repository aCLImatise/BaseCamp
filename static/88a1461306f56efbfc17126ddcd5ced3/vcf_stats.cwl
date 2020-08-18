class: CommandLineTool
id: ../../../vcf_stats.cwl
inputs:
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
  doc: Prefix of output files. If slashes are present, directories will be created.
  type: string
  inputBinding:
    prefix: --prefix
- id: samples
  doc: Process only the listed samples, - for none. Excluding unwanted samples may
    increase performance considerably.
  type: string
  inputBinding:
    prefix: --samples
- id: file_dot_vcf_do_tgz
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf-stats
