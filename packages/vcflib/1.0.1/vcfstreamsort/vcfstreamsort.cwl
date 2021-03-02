class: CommandLineTool
id: vcfstreamsort.cwl
inputs:
- id: in_window
  doc: number of sites to sort (default 10000)
  type: long?
  inputBinding:
    prefix: --window
- id: in_all
  doc: load all sites and then sort in memory
  type: boolean?
  inputBinding:
    prefix: --all
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
- vcfstreamsort
