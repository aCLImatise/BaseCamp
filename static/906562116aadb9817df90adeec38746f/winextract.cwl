class: CommandLineTool
id: winextract.cwl
inputs:
- id: genome
  doc: 'Genome reference file. Valid filetypes are: .fa and .fasta.'
  type: File
  inputBinding:
    prefix: --genome
- id: in_bed
  doc: 'Input cand-regions. Valid filetype is: .bed.'
  type: File
  inputBinding:
    prefix: --in-bed
- id: output
  doc: 'Output file. Valid filetypes are: .fasta and .fa.'
  type: File
  inputBinding:
    prefix: --output
- id: window
  doc: Window size to analyse. In range [5..2000].
  type: string
  inputBinding:
    prefix: --window
- id: uow
  doc: Use given window.
  type: boolean
  inputBinding:
    prefix: --uow
- id: asn
  doc: Add score to output sequence name.
  type: boolean
  inputBinding:
    prefix: --asn
outputs: []
cwlVersion: v1.1
baseCommand:
- winextract
