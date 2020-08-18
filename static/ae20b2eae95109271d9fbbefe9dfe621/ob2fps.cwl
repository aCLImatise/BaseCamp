class: CommandLineTool
id: ../../../ob2fps.cwl
inputs:
- id: fp_two
  doc: linear fragments up to 7 atoms
  type: boolean
  inputBinding:
    prefix: --FP2
- id: fp_three
  doc: SMARTS patterns specified in the file patterns.txt
  type: boolean
  inputBinding:
    prefix: --FP3
- id: fp_four
  doc: SMARTS patterns specified in the file SMARTS_InteLigand.txt
  type: boolean
  inputBinding:
    prefix: --FP4
- id: mac_cs
  doc: Open Babel's implementation of the MACCS 166 keys
  type: boolean
  inputBinding:
    prefix: --MACCS
- id: sub_struct
  doc: generate ChemFP substructure fingerprints
  type: boolean
  inputBinding:
    prefix: --substruct
- id: rdma_ccs_slash_two
  doc: 166 bit RDKit/MACCS fingerprints (version 2)
  type: boolean
  inputBinding:
    prefix: --rdmaccs/2
- id: rdma_ccs_slash_one
  doc: use the version 1 definition for --rdmaccs
  type: boolean
  inputBinding:
    prefix: --rdmaccs/1
- id: id_tag
  doc: tag name containing the record id (SD files only)
  type: string
  inputBinding:
    prefix: --id-tag
- id: in
  doc: input structure format (default autodetects from the filename extension)
  type: string
  inputBinding:
    prefix: --in
- id: output
  doc: save the fingerprints to FILENAME (default=stdout)
  type: File
  inputBinding:
    prefix: --output
- id: out
  doc: output structure format (default guesses from output filename, or is 'fps')
  type: string
  inputBinding:
    prefix: --out
- id: errors
  doc: how should structure parse errors be handled? (default=ignore)
  type: string
  inputBinding:
    prefix: --errors
- id: filenames
  doc: input structure files (default is stdin)
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ob2fps
