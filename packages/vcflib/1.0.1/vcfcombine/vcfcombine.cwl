class: CommandLineTool
id: vcfcombine.cwl
inputs:
- id: in_region
  doc: A region specifier of the form chrN:x-y to bound the merge
  type: string?
  inputBinding:
    prefix: --region
- id: in_vcf
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: File?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/vcflib:1.0.1--hd2e4403_1
cwlVersion: v1.1
baseCommand:
- vcfcombine
