class: CommandLineTool
id: ../../../a5_pipeline.pl.cwl
inputs:
- id: begin
  doc: ''
  type: string
  inputBinding:
    prefix: --begin
- id: end
  doc: ''
  type: string
  inputBinding:
    prefix: --end
- id: preprocessed
  doc: ''
  type: boolean
  inputBinding:
    prefix: --preprocessed
- id: threads
  doc: ''
  type: string
  inputBinding:
    prefix: --threads
- id: debug
  doc: ''
  type: boolean
  inputBinding:
    prefix: --debug
- id: meta_genome
  doc: ''
  type: boolean
  inputBinding:
    prefix: --metagenome
- id: lib_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_base
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- a5_pipeline.pl
