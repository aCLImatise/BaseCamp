class: CommandLineTool
id: refinem_genome_stats.cwl
inputs:
- id: scaffold_stats_file
  doc: file with statistics for each scaffold
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: output file with genome statistics
  type: string
  inputBinding:
    position: 1
- id: cpus
  doc: 'number of CPUs to use (default: 1)'
  type: string
  inputBinding:
    prefix: --cpus
- id: silent
  doc: 'suppress output of logger (default: False)'
  type: boolean
  inputBinding:
    prefix: --silent
outputs: []
cwlVersion: v1.1
baseCommand:
- refinem
- genome_stats
