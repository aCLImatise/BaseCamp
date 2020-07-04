class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tb_profiler_reformat.cwl
inputs:
- id: txt
  doc: 'Add text output (default: False)'
  type: boolean
  inputBinding:
    prefix: --txt
- id: csv
  doc: 'Add CSV output (default: False)'
  type: boolean
  inputBinding:
    prefix: --csv
- id: pdf
  doc: 'Add PDF output. This requires pdflatex to be installed (default: False)'
  type: boolean
  inputBinding:
    prefix: --pdf
- id: db
  doc: 'Mutation panel name (default: tbdb)'
  type: string
  inputBinding:
    prefix: --db
- id: external_db
  doc: 'Path to db files prefix (overrides "--db" parameter) (default: None)'
  type: string
  inputBinding:
    prefix: --external_db
- id: json
  doc: Sample prefix
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tb-profiler
- reformat
