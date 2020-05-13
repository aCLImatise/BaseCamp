class: CommandLineTool
id: Sibelia.cwl
inputs:
- id: sibel_i_a
  doc: '{-s <loose|fine|far>|-k <file name>} [-o <dir name>] [--noblocks] [-r] [-a]
    [-m <integer>] [-q] [-g] [-v] [-t <dir name>] [--lastk <integer > 1>] [--allstages]
    [--gff] [--nopostprocess] [--correctboundaries] [-i <integer > 0>] [--] [--version]
    [-h] <fasta files with genomes> ...'
  type: string
  inputBinding:
    position: 0
- id: or
  doc: --
  type: boolean
  inputBinding:
    prefix: -- OR
- id: k
  doc: ',  --stagefile <file name>'
  type: File
  inputBinding:
    prefix: -k
outputs: []
cwlVersion: v1.1
baseCommand:
- Sibelia
