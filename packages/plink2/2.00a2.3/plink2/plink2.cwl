class: CommandLineTool
id: plink2.cwl
inputs:
- id: in_genotyping_rate
  doc: ', and --zst-decompress.'
  type: boolean?
  inputBinding:
    prefix: --genotyping-rate
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/plink2:2.00a2.3--hf22980b_0
cwlVersion: v1.1
baseCommand:
- plink2
