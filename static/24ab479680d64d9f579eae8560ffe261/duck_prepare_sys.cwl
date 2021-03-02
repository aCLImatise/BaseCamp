class: CommandLineTool
id: duck_prepare_sys.cwl
inputs:
- id: in_protein
  doc: Apoprotein in PDB format
  type: string?
  inputBinding:
    prefix: --protein
- id: in_ligand
  doc: Ligand in mol format
  type: string?
  inputBinding:
    prefix: --ligand
- id: in_chunk
  doc: Chunked protein
  type: string?
  inputBinding:
    prefix: --chunk
- id: in_interaction
  doc: Protein atom to use for ligand interaction.
  type: string?
  inputBinding:
    prefix: --interaction
- id: in_seed
  doc: Random seed.
  type: string?
  inputBinding:
    prefix: --seed
- id: in_gpu_id
  doc: GPU ID (optional); if not specified, runs on CPU only.
  type: string?
  inputBinding:
    prefix: --gpu-id
- id: in_force_constant_eq
  doc: "Force constant for equilibration.\n"
  type: string?
  inputBinding:
    prefix: --force-constant-eq
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- duck_prepare_sys
