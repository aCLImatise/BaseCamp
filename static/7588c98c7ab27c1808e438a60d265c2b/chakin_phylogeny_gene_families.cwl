class: CommandLineTool
id: chakin_phylogeny_gene_families.cwl
inputs:
- id: in_family_name
  doc: Restrict to families beginning with given prefix
  type: string?
  inputBinding:
    prefix: --family_name
- id: in_nuke
  doc: Removes all previous gene families data
  type: boolean?
  inputBinding:
    prefix: --nuke
- id: in_none
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/python-chado:2.3.4--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- chakin
- phylogeny
- gene_families
