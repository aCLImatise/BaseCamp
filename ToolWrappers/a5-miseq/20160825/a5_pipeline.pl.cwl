class: CommandLineTool
id: a5_pipeline.pl.cwl
inputs:
- id: in_meta_genome
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --metagenome
- id: in_debug
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_threads
  doc: ''
  type: long?
  inputBinding:
    prefix: --threads
- id: in_preprocessed
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --preprocessed
- id: in_end
  doc: ''
  type: long?
  inputBinding:
    prefix: --end
- id: in_begin
  doc: ''
  type: long?
  inputBinding:
    prefix: --begin
- id: in_lib_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out_base
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- a5_pipeline.pl
