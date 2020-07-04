class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/yaml2gff.1.4.pl.cwl
inputs:
- id: filter_status
  doc: "filter out alignments with given status, e.g. 'incomplete'               \
    \                                                                            \
    \                                             "
  type: string
  inputBinding:
    prefix: --filterstatus
- id: yamltwogffdotpl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: scipio_dot_yaml
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: scipio_dot_gff
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- yaml2gff.1.4.pl
