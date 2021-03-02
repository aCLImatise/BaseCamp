class: CommandLineTool
id: lukasa.py.cwl
inputs:
- id: in_output_filename
  doc: "spaln species table to use\n"
  type: File?
  inputBinding:
    prefix: --output_filename
- id: in_contigs_filename
  doc: File with genomic contigs
  type: string
  inputBinding:
    position: 0
- id: in_proteins_filename
  doc: File with proteins to map
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_filename
  doc: "spaln species table to use\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_filename)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/lukasa:0.0.7--py38_0
cwlVersion: v1.1
baseCommand:
- lukasa.py
