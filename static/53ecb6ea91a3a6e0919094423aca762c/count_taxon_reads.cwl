class: CommandLineTool
id: count_taxon_reads.cwl
inputs:
- id: input
  doc: 'specify SAM file to be analysed (default: STDIN)'
  type: string
  inputBinding:
    prefix: --input
- id: prefix
  doc: prefix of temporary statistics files
  type: string
  inputBinding:
    prefix: --prefix
- id: verbose
  doc: print additional information to STDERR
  type: boolean
  inputBinding:
    prefix: --verbose
- id: debug
  doc: print debug messages to STDERR
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- count_taxon_reads
