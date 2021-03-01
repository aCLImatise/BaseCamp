class: CommandLineTool
id: extract_markers.py.cwl
inputs:
- id: in_database
  doc: The input MetaPhlAn dtabase
  type: string?
  inputBinding:
    prefix: --database
- id: in_clade
  doc: The clades to investigate
  type: string?
  inputBinding:
    prefix: --clade
- id: in_output_dir
  doc: "The output directory\n"
  type: Directory?
  inputBinding:
    prefix: --output_dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "The output directory\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metaphlan:3.0.7--pyh7b7c402_0
cwlVersion: v1.1
baseCommand:
- extract_markers.py
