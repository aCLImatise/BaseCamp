class: CommandLineTool
id: ASCIIGenome.cwl
inputs:
- id: input
  doc: 'Input files to be displayed: bam, bed, gtf, bigwig, bedgraph, etc'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ASCIIGenome
