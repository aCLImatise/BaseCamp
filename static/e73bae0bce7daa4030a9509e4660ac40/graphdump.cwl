class: CommandLineTool
id: graphdump.cwl
inputs:
- id: graph_dump
  doc: -k <integer> [-s <>] ...  -f <seq|group|dot|gfa1|gfa2|fasta> [--prefix] [--]
    [--version] [-h] <file name>
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- graphdump
