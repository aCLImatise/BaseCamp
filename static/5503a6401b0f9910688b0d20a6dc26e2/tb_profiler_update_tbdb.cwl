class: CommandLineTool
id: ../../../tb_profiler_update_tbdb.cwl
inputs:
- id: seqname
  doc: 'Mutation panel name (default: Chromosome)'
  type: string
  inputBinding:
    prefix: --seqname
outputs: []
cwlVersion: v1.1
baseCommand:
- tb-profiler
- update_tbdb
