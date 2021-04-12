class: CommandLineTool
id: network_merge.cwl
inputs:
- id: in_input
  doc: multiple files are separated by commas
  type: string?
  inputBinding:
    prefix: --input
- id: in_output
  doc: 'correlation coefficient cutoff (default: 0.5)'
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'correlation coefficient cutoff (default: 0.5)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gcen:0.5.1--hc9558a2_0
cwlVersion: v1.1
baseCommand:
- network_merge
