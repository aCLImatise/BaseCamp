class: CommandLineTool
id: pybel.cwl
inputs:
- id: connection
  doc: 'Database connection string.  [default: sqlite:////home/ubuntu/.pybel/pybel_0.13.0_cache.db]'
  type: string
  inputBinding:
    prefix: --connection
outputs: []
cwlVersion: v1.1
baseCommand:
- pybel
