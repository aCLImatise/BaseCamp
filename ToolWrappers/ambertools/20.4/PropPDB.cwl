class: CommandLineTool
id: PropPDB.cwl
inputs:
- id: in_structure_reassemble_pdb
  doc: ': the structure to reassemble (PDB format)'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_output_structure_pdb
  doc: ': the output structure (PDB format)'
  type: boolean
  inputBinding:
    prefix: -o
- id: in_ix
  doc: ': number of replicas along _X_ vector'
  type: boolean
  inputBinding:
    prefix: -ix
- id: in_iy
  doc: ': number of replicas along _Y_ vector'
  type: boolean
  inputBinding:
    prefix: -iy
- id: in_iz
  doc: ': number of replicas along _Z_ vector'
  type: boolean
  inputBinding:
    prefix: -iz
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- PropPDB
