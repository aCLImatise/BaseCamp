class: CommandLineTool
id: download_metaseq_example_data.py.cwl
inputs:
- id: data_dir
  doc: Location to store downloaded and prepped data. Default is /tmp/tmpzhvnufo7/lib/python2.7/site-
    packages/metaseq/test/data
  type: string
  inputBinding:
    prefix: --data-dir
outputs: []
cwlVersion: v1.1
baseCommand:
- download_metaseq_example_data.py
