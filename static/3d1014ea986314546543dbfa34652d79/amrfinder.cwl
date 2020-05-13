class: CommandLineTool
id: amrfinder.cwl
inputs:
- id: update
  doc: ''
  type: boolean
  inputBinding:
    prefix: --update
- id: protein
  doc: ''
  type: string
  inputBinding:
    prefix: --protein
- id: nucleotide
  doc: ''
  type: string
  inputBinding:
    prefix: --nucleotide
- id: gff
  doc: ''
  type: string
  inputBinding:
    prefix: --gff
- id: p_gap
  doc: ''
  type: boolean
  inputBinding:
    prefix: --pgap
- id: database
  doc: ''
  type: string
  inputBinding:
    prefix: --database
- id: ident_min
  doc: ''
  type: long
  inputBinding:
    prefix: --ident_min
- id: coverage_min
  doc: ''
  type: long
  inputBinding:
    prefix: --coverage_min
- id: organism
  doc: ''
  type: string
  inputBinding:
    prefix: --organism
- id: list_organisms
  doc: ''
  type: boolean
  inputBinding:
    prefix: --list_organisms
- id: translation_table
  doc: ''
  type: string
  inputBinding:
    prefix: --translation_table
- id: plus
  doc: ''
  type: boolean
  inputBinding:
    prefix: --plus
- id: report_common
  doc: ''
  type: boolean
  inputBinding:
    prefix: --report_common
- id: mutation_all
  doc: ''
  type: string
  inputBinding:
    prefix: --mutation_all
- id: blast_bin
  doc: ''
  type: string
  inputBinding:
    prefix: --blast_bin
- id: output
  doc: ''
  type: string
  inputBinding:
    prefix: --output
- id: quiet
  doc: ''
  type: boolean
  inputBinding:
    prefix: --quiet
- id: g_pipe_org
  doc: ''
  type: boolean
  inputBinding:
    prefix: --gpipe_org
- id: parm
  doc: ''
  type: string
  inputBinding:
    prefix: --parm
- id: threads
  doc: ''
  type: string
  inputBinding:
    prefix: --threads
- id: debug
  doc: ''
  type: boolean
  inputBinding:
    prefix: --debug
- id: log
  doc: ''
  type: string
  inputBinding:
    prefix: --log
outputs: []
cwlVersion: v1.1
baseCommand:
- amrfinder
