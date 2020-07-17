class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pdb_cluster_zip.cwl
inputs:
- id: config
  doc: This file can be a YAML file, JSON file or JSON string
  type: string
  inputBinding:
    prefix: --config
- id: output_pdb_zip_path
  doc: Output ZIP file name
  type: string
  inputBinding:
    prefix: --output_pdb_zip_path
outputs: []
cwlVersion: v1.1
baseCommand:
- pdb_cluster_zip
