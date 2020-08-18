class: CommandLineTool
id: ../../../parallel_run.pl.cwl
inputs:
- id: file_directory
  doc: File directory
  type: boolean
  inputBinding:
    prefix: -d
- id: program_run_mafft
  doc: 'program to run default: mafft'
  type: boolean
  inputBinding:
    prefix: -m
- id: number_of_threads
  doc: Number of threads
  type: boolean
  inputBinding:
    prefix: -t
- id: muscle
  doc: 'muscle options  default: "-diags" type "muscle" to see additional muscle options '
  type: string
  inputBinding:
    prefix: -muscle
- id: translate
  doc: ':  Translate DNA to amino acid'
  type: boolean
  inputBinding:
    prefix: -translate
- id: one_line
  doc: ':     Write multi-line fasta sequences to one line'
  type: boolean
  inputBinding:
    prefix: -oneline
- id: pal_two_nal
  doc: ':    Convert amino acid alignment to codon alignment, needs DNA fasta file'
  type: boolean
  inputBinding:
    prefix: -pal2nal
outputs: []
cwlVersion: v1.1
baseCommand:
- parallel_run.pl
