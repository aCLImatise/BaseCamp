class: CommandLineTool
id: ../../../pybel.cwl
inputs:
- id: in_connection
  doc: "Database connection string.  [default:\nsqlite:////root/.pybel/pybel_0.13.0_cache.db]"
  type: string
  inputBinding:
    prefix: --connection
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pybel
