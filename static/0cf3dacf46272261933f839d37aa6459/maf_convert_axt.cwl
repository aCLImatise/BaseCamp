class: CommandLineTool
id: maf_convert_axt.cwl
inputs:
- id: in_maf_convert
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_maf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_blast
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_blast_tab
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_chain
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_gff
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_html
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_psl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_sam
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_tab
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
  dockerPull: quay.io/biocontainers/last:1186--h8b12597_0
cwlVersion: v1.1
baseCommand:
- maf-convert
- axt
