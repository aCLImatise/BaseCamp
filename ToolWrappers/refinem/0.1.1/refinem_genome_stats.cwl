class: CommandLineTool
id: refinem_genome_stats.cwl
inputs:
- id: in_cpus
  doc: 'number of CPUs to use (default: 1)'
  type: long?
  inputBinding:
    prefix: --cpus
- id: in_silent
  doc: 'suppress output of logger (default: False)'
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_scaffold_stats_file
  doc: file with statistics for each scaffold
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: output file with genome statistics
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- refinem
- genome_stats
