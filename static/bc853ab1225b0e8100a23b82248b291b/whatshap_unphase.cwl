class: CommandLineTool
id: whatshap_unphase.cwl
inputs:
- id: in_vcf
  doc: VCF file. Use "-" to read from standard input
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/whatshap:1.1--py39h7cff6ad_0
cwlVersion: v1.1
baseCommand:
- whatshap
- unphase
