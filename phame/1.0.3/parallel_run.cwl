class: CommandLineTool
id: parallel_run.pl.cwl
inputs:
- id: d
  doc: File directory
  type: boolean
  inputBinding:
    prefix: -d
- id: m
  doc: 'program to run default: mafft'
  type: boolean
  inputBinding:
    prefix: -m
- id: t
  doc: Number of threads
  type: boolean
  inputBinding:
    prefix: -t
- id: muscle
  doc: 'muscle options  default: "-diags" type "muscle" to see additional muscle options '
  type: string
  inputBinding:
    prefix: -muscle
- id: maff_t
  doc: 'mafft options type "mafft" to see additional mafft options '
  type: string
  inputBinding:
    prefix: -mafft
- id: maff_t
  doc: ':      Multiple alignment program'
  type: boolean
  inputBinding:
    prefix: -mafft
- id: muscle
  doc: ':     Multiple alignment program'
  type: boolean
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
- id: pal2nal
  doc: ':    Convert amino acid alignment to codon alignment, needs DNA fasta file'
  type: boolean
  inputBinding:
    prefix: -pal2nal
outputs: []
cwlVersion: v1.1
baseCommand:
- parallel_run.pl
