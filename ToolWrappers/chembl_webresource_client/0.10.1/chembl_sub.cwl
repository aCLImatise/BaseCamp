class: CommandLineTool
id: chembl_sub.cwl
inputs:
- id: in_input
  doc: input file with ChEMBL IDs
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: output file with ChEMBL IDs of similar molecules
  type: File
  inputBinding:
    prefix: --output
- id: in_source_format
  doc: "input file format. Can be one of 3: chembl_id (a comma\nseparated list of\
    \ chembl IDs), sdf: (MDL molfile), smi\n(file containing smiles)"
  type: File
  inputBinding:
    prefix: --source-format
- id: in_destination_format
  doc: "output file format. can be chosen from 5 options:\n[chembl_id, smi, sdf, inchi,\
    \ inchi_key]"
  type: File
  inputBinding:
    prefix: --destination-format
- id: in_human
  doc: "human readable output: prints header and first column\nwith original names\n"
  type: boolean
  inputBinding:
    prefix: --Human
- id: in_ch_embl_sim
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output file with ChEMBL IDs of similar molecules
  type: File
  outputBinding:
    glob: $(inputs.in_output)
- id: out_destination_format
  doc: "output file format. can be chosen from 5 options:\n[chembl_id, smi, sdf, inchi,\
    \ inchi_key]"
  type: File
  outputBinding:
    glob: $(inputs.in_destination_format)
cwlVersion: v1.1
baseCommand:
- chembl_sub
