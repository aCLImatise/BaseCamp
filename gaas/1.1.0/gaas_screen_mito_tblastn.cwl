class: CommandLineTool
id: gaas_screen_mito_tblastn.pl.cwl
inputs:
- id: tab
  doc: Input tabulated blast file -outfmt 6
  type: boolean
  inputBinding:
    prefix: --tab
- id: output
  doc: The output will be the EMBL file with the record "headers" modified
  type: string
  inputBinding:
    prefix: --output
- id: genome
  doc: Optional. Genome in fasta format. Allow to calculate the mapping coverage.
  type: string
  inputBinding:
    prefix: --genome
- id: a
  doc: description,
  type: string
  inputBinding:
    prefix: '- a'
- id: as
  doc: relevant information as possible,
  type: string
  inputBinding:
    prefix: '- as'
- id: the
  doc: used,
  type: string
  inputBinding:
    prefix: '- the'
- id: a
  doc: sample,
  type: string
  inputBinding:
    prefix: '- a'
- id: an
  doc: of the expected behaviour that is not occurring.
  type: string
  inputBinding:
    prefix: '- an'
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_screen_mito_tblastn.pl
