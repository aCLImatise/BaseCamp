class: CommandLineTool
id: twopaco.cwl
inputs:
- id: two_paco
  doc: '[-o <file name>] [--test] [--tmpdir <directory name>] [-t <integer>] [-r <integer>]
    [-q <integer>] -f <integer> [-k <oddc>] [--] [--version] [-h] <fasta files with
    genomes> ...'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- twopaco
