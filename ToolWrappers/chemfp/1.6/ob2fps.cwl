class: CommandLineTool
id: ob2fps.cwl
inputs:
- id: in_fp_two
  doc: linear fragments up to 7 atoms
  type: boolean?
  inputBinding:
    prefix: --FP2
- id: in_fp_three
  doc: SMARTS patterns specified in the file patterns.txt
  type: boolean?
  inputBinding:
    prefix: --FP3
- id: in_fp_four
  doc: SMARTS patterns specified in the file
  type: boolean?
  inputBinding:
    prefix: --FP4
- id: in_sub_struct
  doc: generate ChemFP substructure fingerprints
  type: boolean?
  inputBinding:
    prefix: --substruct
- id: in_id_tag
  doc: tag name containing the record id (SD files only)
  type: string?
  inputBinding:
    prefix: --id-tag
- id: in_in
  doc: "input structure format (default autodetects from the\nfilename extension)"
  type: File?
  inputBinding:
    prefix: --in
- id: in_output
  doc: save the fingerprints to FILENAME (default=stdout)
  type: File?
  inputBinding:
    prefix: --output
- id: in_out
  doc: "output structure format (default guesses from output\nfilename, or is 'fps')"
  type: File?
  inputBinding:
    prefix: --out
- id: in_errors
  doc: "how should structure parse errors be handled?\n(default=ignore)"
  type: string?
  inputBinding:
    prefix: --errors
- id: in_filenames
  doc: input structure files (default is stdin)
  type: string
  inputBinding:
    position: 0
- id: in_smarts_inte_ligand_dot_txt
  doc: --MACCS               Open Babel's implementation of the MACCS 166 keys
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "output structure format (default guesses from output\nfilename, or is 'fps')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- ob2fps
