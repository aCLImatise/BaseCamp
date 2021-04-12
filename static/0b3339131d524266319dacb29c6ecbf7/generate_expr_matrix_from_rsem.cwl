class: CommandLineTool
id: generate_expr_matrix_from_rsem.cwl
inputs:
- id: in_input
  doc: a text file with sample ID and path to its RSEM result file on each line
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: TPM value instead of FPKM vaule
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: TPM value instead of FPKM vaule
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gcen:0.5.1--hc9558a2_0
cwlVersion: v1.1
baseCommand:
- generate_expr_matrix_from_rsem
