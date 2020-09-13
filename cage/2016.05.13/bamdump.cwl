class: CommandLineTool
id: ../../../bamdump.cwl
inputs:
- id: in_bam_dump
  doc: '[--] [--version] [-h] <bamfile> <contig> <start> <end>'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bamdump
