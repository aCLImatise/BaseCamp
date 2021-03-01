class: CommandLineTool
id: sequana_start_pipeline.cwl
inputs:
- id: in_force
  doc: Force the creation to overwrite existing directory and
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_keywords
  doc: Keywords (you can edit later)
  type: string?
  inputBinding:
    prefix: --keywords
- id: in_description
  doc: "description of your future pipeline (you can still\nedit later)\n"
  type: string?
  inputBinding:
    prefix: --description
- id: in_se_quan_a_start_pipeline
  doc: and follow the instructions. Please see the README page on our
  type: string
  inputBinding:
    position: 0
- id: in_contents
  doc: --name NAME           Name of your project. For instance for
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sequana_start_pipeline
