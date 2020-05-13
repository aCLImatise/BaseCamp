class: CommandLineTool
id: abyss_fixmate.cwl
inputs:
- id: no_qname
  doc: set the qname to * [default]
  type: boolean
  inputBinding:
    prefix: --no-qname
- id: qname
  doc: do not alter the qname
  type: boolean
  inputBinding:
    prefix: --qname
- id: all
  doc: print all alignments
  type: boolean
  inputBinding:
    prefix: --all
- id: diff
  doc: print alignments that align to different contigs [default]
  type: boolean
  inputBinding:
    prefix: --diff
- id: min_align
  doc: the minimal alignment size [1]
  type: string
  inputBinding:
    prefix: --min-align
- id: same
  doc: write properly-paired reads to this file
  type: string
  inputBinding:
    prefix: --same
- id: hist
  doc: write the fragment size histogram to FILE
  type: File
  inputBinding:
    prefix: --hist
- id: cov
  doc: write the physical coverage to FILE
  type: File
  inputBinding:
    prefix: --cov
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: db
  doc: specify path of database repository in FILE
  type: File
  inputBinding:
    prefix: --db
- id: library
  doc: specify library NAME for sqlite
  type: string
  inputBinding:
    prefix: --library
- id: strain
  doc: specify strain NAME for sqlite
  type: string
  inputBinding:
    prefix: --strain
- id: species
  doc: specify species NAME for sqlite
  type: string
  inputBinding:
    prefix: --species
outputs: []
cwlVersion: v1.1
baseCommand:
- abyss-fixmate
