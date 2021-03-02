class: CommandLineTool
id: vSNP_step2.py.cwl
inputs:
- id: in_reference
  doc: provide a valid reference, see -t output
  type: string?
  inputBinding:
    prefix: --reference
- id: in_table
  doc: see valid reference types available
  type: boolean?
  inputBinding:
    prefix: --table
- id: in_all
  doc: create table with all isolates
  type: boolean?
  inputBinding:
    prefix: --all
- id: in_subset
  doc: "create trees with a subset of sample that represent\nthe whole"
  type: boolean?
  inputBinding:
    prefix: --subset
- id: in_debug
  doc: turn off map.pooling of samples
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_no_filters
  doc: run without applying filters
  type: boolean?
  inputBinding:
    prefix: --no_filters
- id: in_filter_finder
  doc: write possible positions to filter to text file
  type: boolean?
  inputBinding:
    prefix: --filter_finder
- id: in_cwd
  doc: 'Optional: path to VCF files'
  type: Directory?
  inputBinding:
    prefix: --cwd
- id: in_gbk
  doc: 'Optional: provide full path to gbk file'
  type: File?
  inputBinding:
    prefix: --gbk
- id: in_prog
  doc: ''
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
- vSNP_step2.py
