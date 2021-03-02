class: CommandLineTool
id: sarscov2formatter.cwl
inputs:
- id: in_alignment
  doc: Mulitple sequence alignment file
  type: File?
  inputBinding:
    prefix: --alignment
- id: in_metadata
  doc: "Metadata source (Use \"ncbi\" if using NCBI SARS-CoV-2\ndata, otherwise supply\
    \ tabular file of the correct\nformat)\n"
  type: File?
  inputBinding:
    prefix: --metadata
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sarscov2formatter:0.5.3--py_0
cwlVersion: v1.1
baseCommand:
- sarscov2formatter
