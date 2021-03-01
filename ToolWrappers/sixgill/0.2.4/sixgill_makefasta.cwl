class: CommandLineTool
id: sixgill_makefasta.cwl
inputs:
- id: in_out
  doc: output file
  type: File?
  inputBinding:
    prefix: --out
- id: in_type
  doc: database type
  type: string?
  inputBinding:
    prefix: --type
- id: in_missed_cleavages
  doc: missed cleavages (for type peptide only)
  type: string?
  inputBinding:
    prefix: --missedcleavages
- id: in_min_peptide_length
  doc: minimum peptide length (for type peptide only)
  type: long?
  inputBinding:
    prefix: --minpeptidelength
- id: in_debug
  doc: Enable debug logging
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: output file
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- sixgill_makefasta
