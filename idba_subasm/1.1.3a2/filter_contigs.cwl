class: CommandLineTool
id: filter_contigs.cwl
inputs:
- id: min_contig
  doc: (=100)            filter out reads containing 'N'
  type: string
  inputBinding:
    prefix: --min_contig
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_contigs
