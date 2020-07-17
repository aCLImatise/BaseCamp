class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/download_metaseq_example_data.py.cwl
inputs:
- id: data_dir
  doc: Location to store downloaded and prepped data. Default is /tmp/tmpot432_h7/lib/python2.7/site-
    packages/metaseq/test/data
  type: string
  inputBinding:
    prefix: --data-dir
- id: downloads
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: data
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: from
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: ucsc
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- download_metaseq_example_data.py
