class: CommandLineTool
id: getOrthologList_input xmfa_backbone seq file_reference genome_CDS ortholog filename.cwl
inputs:
- id: cds_alignment_basename
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- getOrthologList
- input xmfa
- backbone seq file
- reference genome
- CDS ortholog filename
