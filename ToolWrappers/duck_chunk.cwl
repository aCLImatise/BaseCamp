class: CommandLineTool
id: duck_chunk.cwl
inputs:
- id: in_protein
  doc: Apoprotein in PDB format
  type: string
  inputBinding:
    prefix: --protein
- id: in_ligand
  doc: Ligand in mol format
  type: string
  inputBinding:
    prefix: --ligand
- id: in_cut_off
  doc: Cutoff for chunk calculation
  type: string
  inputBinding:
    prefix: --cutoff
- id: in_ignore_buffers
  doc: Do not remove buffers (solvent, ions etc.)
  type: boolean
  inputBinding:
    prefix: --ignore-buffers
- id: in_interaction
  doc: "Protein atom to use for ligand interaction.\n"
  type: string
  inputBinding:
    prefix: --interaction
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- duck_chunk
