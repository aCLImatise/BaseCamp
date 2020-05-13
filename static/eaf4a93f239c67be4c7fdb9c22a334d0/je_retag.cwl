class: CommandLineTool
id: je_retag.cwl
inputs:
- id: act_gtac
  doc: 'ACTCTAC,TCTGTAC,ACTGTAG  '
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- je
- retag
