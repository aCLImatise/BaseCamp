class: CommandLineTool
id: ../../../twopaco.cwl
inputs:
- id: o
  doc: ''
  type: File
  inputBinding:
    prefix: -o
- id: test
  doc: ''
  type: boolean
  inputBinding:
    prefix: --test
- id: tmpdir
  doc: ''
  type: Directory
  inputBinding:
    prefix: --tmpdir
- id: t
  doc: ''
  type: boolean
  inputBinding:
    prefix: -t
- id: r
  doc: ''
  type: long
  inputBinding:
    prefix: -r
- id: q
  doc: ''
  type: long
  inputBinding:
    prefix: -q
- id: f
  doc: ''
  type: long
  inputBinding:
    prefix: -f
- id: k
  doc: ''
  type: boolean
  inputBinding:
    prefix: -k
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
