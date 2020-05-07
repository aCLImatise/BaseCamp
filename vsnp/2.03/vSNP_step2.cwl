class: CommandLineTool
id: vSNP_step2.py.cwl
inputs:
- id: reference
  doc: provide a valid reference, see -t output
  type: string
  inputBinding:
    prefix: --reference
- id: table
  doc: see valid reference types available
  type: boolean
  inputBinding:
    prefix: --table
- id: all
  doc: create table with all isolates
  type: boolean
  inputBinding:
    prefix: --all
- id: subset
  doc: create trees with a subset of sample that represent the whole
  type: boolean
  inputBinding:
    prefix: --subset
- id: debug
  doc: turn off map.pooling of samples
  type: boolean
  inputBinding:
    prefix: --debug
- id: no_filters
  doc: run without applying filters
  type: boolean
  inputBinding:
    prefix: --no_filters
- id: filter_finder
  doc: write possible positions to filter to text file
  type: boolean
  inputBinding:
    prefix: --filter_finder
- id: cwd
  doc: 'Optional: path to VCF files'
  type: string
  inputBinding:
    prefix: --cwd
- id: gbk
  doc: 'Optional: provide full path to gbk file'
  type: string
  inputBinding:
    prefix: --gbk
outputs: []
cwlVersion: v1.1
baseCommand:
- vSNP_step2.py
