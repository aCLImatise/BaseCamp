class: CommandLineTool
id: ../../../ligand.cwl
inputs:
- id: config
  doc: This file can be a YAML file, JSON file or JSON string
  type: string
  inputBinding:
    prefix: --config
- id: output_pdb_path
  doc: Path to the output PDB ligand file.
  type: string
  inputBinding:
    prefix: --output_pdb_path
outputs: []
cwlVersion: v1.1
baseCommand:
- ligand
