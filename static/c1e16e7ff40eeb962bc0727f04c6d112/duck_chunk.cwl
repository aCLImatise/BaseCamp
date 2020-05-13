class: CommandLineTool
id: duck_chunk.cwl
inputs:
- id: protein
  doc: Apoprotein in PDB format
  type: string
  inputBinding:
    prefix: --protein
- id: ligand
  doc: Ligand in mol format
  type: string
  inputBinding:
    prefix: --ligand
- id: cut_off
  doc: Cutoff for chunk calculation
  type: string
  inputBinding:
    prefix: --cutoff
- id: ignore_buffers
  doc: Do not remove buffers (solvent, ions etc.)
  type: boolean
  inputBinding:
    prefix: --ignore-buffers
- id: interaction
  doc: Protein atom to use for ligand interaction.
  type: long
  inputBinding:
    prefix: --interaction
outputs: []
cwlVersion: v1.1
baseCommand:
- duck_chunk
