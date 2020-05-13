class: CommandLineTool
id: sixgill_makefasta.cwl
inputs:
- id: meta_peptide_dbfile
  doc: input metapeptide database file
  type: string
  inputBinding:
    position: 0
- id: out
  doc: output file
  type: string
  inputBinding:
    prefix: --out
- id: type
  doc: database type
  type: string
  inputBinding:
    prefix: --type
- id: missed_cleavages
  doc: missed cleavages (for type peptide only)
  type: string
  inputBinding:
    prefix: --missedcleavages
- id: min_peptide_length
  doc: minimum peptide length (for type peptide only)
  type: long
  inputBinding:
    prefix: --minpeptidelength
- id: debug
  doc: Enable debug logging
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- sixgill_makefasta
