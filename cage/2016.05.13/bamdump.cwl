class: CommandLineTool
id: bamdump.cwl
inputs:
- id: bam_dump
  doc: '[--] [--version] [-h] <bamfile> <contig> <start> <end>'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bamdump
