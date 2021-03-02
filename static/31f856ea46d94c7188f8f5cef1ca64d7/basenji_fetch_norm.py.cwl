class: CommandLineTool
id: basenji_fetch_norm.py.cwl
inputs:
- id: in_sampled_snps_fit
  doc: 'Sampled SNPs to fit distribution [Default: 131072]'
  type: long?
  inputBinding:
    prefix: -s
- id: in_sad_h_five_path
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/basenji:0.5--py_0
cwlVersion: v1.1
baseCommand:
- basenji_fetch_norm.py
