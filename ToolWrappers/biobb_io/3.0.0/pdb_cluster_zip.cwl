class: CommandLineTool
id: pdb_cluster_zip.cwl
inputs:
- id: in_config
  doc: This file can be a YAML file, JSON file or JSON string
  type: File?
  inputBinding:
    prefix: --config
- id: in_output_pdb_zip_path
  doc: "Output ZIP file name\n"
  type: File?
  inputBinding:
    prefix: --output_pdb_zip_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_pdb_zip_path
  doc: "Output ZIP file name\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_pdb_zip_path)
hints: []
cwlVersion: v1.1
baseCommand:
- pdb_cluster_zip
