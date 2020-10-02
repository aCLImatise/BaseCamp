class: CommandLineTool
id: winextract.cwl
inputs:
- id: in_genome
  doc: 'Genome reference file. Valid filetypes are: .fa and .fasta.'
  type: File
  inputBinding:
    prefix: --genome
- id: in_in_bed
  doc: 'Input cand-regions. Valid filetype is: .bed.'
  type: File
  inputBinding:
    prefix: --in-bed
- id: in_output
  doc: 'Output file. Valid filetypes are: .fasta and .fa.'
  type: File
  inputBinding:
    prefix: --output
- id: in_window
  doc: Window size to analyse. In range [5..2000].
  type: long
  inputBinding:
    prefix: --window
- id: in_uow
  doc: Use given window.
  type: boolean
  inputBinding:
    prefix: --uow
- id: in_asn
  doc: Add score to output sequence name.
  type: boolean
  inputBinding:
    prefix: --asn
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'Output file. Valid filetypes are: .fasta and .fa.'
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- winextract
