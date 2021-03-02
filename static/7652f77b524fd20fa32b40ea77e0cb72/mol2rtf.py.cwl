class: CommandLineTool
id: mol2rtf.py.cwl
inputs:
- id: in_n
  doc: '[--ref reference_rtf_file]'
  type: string?
  inputBinding:
    prefix: -n
- id: in_input_mol_file
  doc: Input mol2 file
  type: File?
  inputBinding:
    prefix: -i
- id: in_output_rtf_file
  doc: Output RTF file
  type: File?
  inputBinding:
    prefix: -o
- id: in_original_residue_name
  doc: Original residue name
  type: string?
  inputBinding:
    prefix: -r
- id: in_ref
  doc: Reference RTF file
  type: File?
  inputBinding:
    prefix: --ref
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_rtf_file
  doc: Output RTF file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_rtf_file)
hints: []
cwlVersion: v1.1
baseCommand:
- mol2rtf.py
