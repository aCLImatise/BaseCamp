class: CommandLineTool
id: duck_prepare_sys.cwl
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
- id: chunk
  doc: Chunked protein
  type: string
  inputBinding:
    prefix: --chunk
- id: interaction
  doc: Protein atom to use for ligand interaction.
  type: long
  inputBinding:
    prefix: --interaction
- id: seed
  doc: Random seed.
  type: string
  inputBinding:
    prefix: --seed
- id: gpu_id
  doc: GPU ID (optional); if not specified, runs on CPU only.
  type: string
  inputBinding:
    prefix: --gpu-id
- id: force_constant_eq
  doc: Force constant for equilibration.
  type: string
  inputBinding:
    prefix: --force-constant-eq
outputs: []
cwlVersion: v1.1
baseCommand:
- duck_prepare_sys
