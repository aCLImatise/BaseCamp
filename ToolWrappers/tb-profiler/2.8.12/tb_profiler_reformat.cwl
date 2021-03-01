class: CommandLineTool
id: tb_profiler_reformat.cwl
inputs:
- id: in_txt
  doc: 'Add text output (default: False)'
  type: boolean?
  inputBinding:
    prefix: --txt
- id: in_csv
  doc: 'Add CSV output (default: False)'
  type: boolean?
  inputBinding:
    prefix: --csv
- id: in_pdf
  doc: "Add PDF output. This requires pdflatex to be installed\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --pdf
- id: in_db
  doc: 'Mutation panel name (default: tbdb)'
  type: string?
  inputBinding:
    prefix: --db
- id: in_external_db
  doc: "Path to db files prefix (overrides \"--db\" parameter)\n(default: None)"
  type: File?
  inputBinding:
    prefix: --external_db
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tb-profiler
- reformat
