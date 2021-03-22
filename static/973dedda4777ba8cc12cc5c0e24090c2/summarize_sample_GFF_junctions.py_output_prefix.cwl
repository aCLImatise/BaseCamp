class: CommandLineTool
id: summarize_sample_GFF_junctions.py_output_prefix.cwl
inputs:
- id: in_summarize_sample_gff_junctions_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_config
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_prefix
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0
cwlVersion: v1.1
baseCommand:
- summarize_sample_GFF_junctions.py
- output_prefix
