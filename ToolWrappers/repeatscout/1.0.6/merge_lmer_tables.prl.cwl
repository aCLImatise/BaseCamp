class: CommandLineTool
id: merge_lmer_tables.prl.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- merge-lmer-tables.prl
