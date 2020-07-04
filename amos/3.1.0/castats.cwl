class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/castats.cwl
inputs:
- id: min_qual
  doc: <n>   Minimum quality value threshhold to report as bad quality (default 20)
  type: boolean
  inputBinding:
    prefix: -minqual
- id: min_contig
  doc: Minimum contig size to report as a big contig (default 10000)
  type: string
  inputBinding:
    prefix: -mincontig
- id: genome_size_used
  doc: 'Genome size used in the calculation of N50 numbers (default: TotalBasesInContigs)'
  type: string
  inputBinding:
    prefix: -g
- id: ca_stats
  doc: <prefix>.asm  [options]
  type: string
  inputBinding:
    position: 0
- id: prefix_dot_asm
  doc: The Celera .asm file
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- castats
