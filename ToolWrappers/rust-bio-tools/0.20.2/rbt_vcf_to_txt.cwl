class: CommandLineTool
id: rbt_vcf_to_txt.cwl
inputs:
- id: in_genotypes
  doc: Display genotypes
  type: boolean?
  inputBinding:
    prefix: --genotypes
- id: in_fmt
  doc: "...\nSelect FORMAT tags"
  type: string?
  inputBinding:
    prefix: --fmt
- id: in_info
  doc: "...\nSelect INFO tags\n"
  type: string?
  inputBinding:
    prefix: --info
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rust-bio-tools:0.20.2--heda7bfa_0
cwlVersion: v1.1
baseCommand:
- rbt
- vcf-to-txt
