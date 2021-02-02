class: CommandLineTool
id: FrameBot_rdmselect.cwl
inputs:
- id: in_num_selection
  doc: number of sequence IDs for each sample. Default is the smallest sample size
  type: long
  inputBinding:
    prefix: --num-selection
- id: in_exclude_samples
  doc: list of sample names to be excluded from selection
  type: string
  inputBinding:
    prefix: --exclude-samples
- id: in_rdm_select_sample_mapping
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sample_mapping
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_outfile
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- FrameBot
- rdmselect
