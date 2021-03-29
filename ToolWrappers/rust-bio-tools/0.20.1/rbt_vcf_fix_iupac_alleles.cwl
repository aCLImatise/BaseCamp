class: CommandLineTool
id: rbt_vcf_fix_iupac_alleles.cwl
inputs:
- id: in_rbt
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rust-bio-tools:0.20.1--heda7bfa_0
cwlVersion: v1.1
baseCommand:
- rbt
- vcf-fix-iupac-alleles
