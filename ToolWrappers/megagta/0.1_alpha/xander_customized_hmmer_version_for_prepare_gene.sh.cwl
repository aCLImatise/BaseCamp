class: CommandLineTool
id: xander_customized_hmmer_version_for_prepare_gene.sh.cwl
inputs:
- id: in_gene
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- xander_customized_hmmer_version_for_prepare_gene.sh
