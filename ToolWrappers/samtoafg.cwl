class: CommandLineTool
id: samtoafg.cwl
inputs:
- id: in_eid
  doc: the EID of the library
  type: boolean
  inputBinding:
    prefix: --eid
- id: in_iid
  doc: the IID of the library
  type: boolean
  inputBinding:
    prefix: --iid
- id: in_mean
  doc: the mean of the fragment-size
  type: boolean
  inputBinding:
    prefix: --mean
- id: in_sd
  doc: "the standard deviation of the fragment-size\n"
  type: boolean
  inputBinding:
    prefix: --sd
- id: in_cb
  doc: ''
  type: string
  inputBinding:
    prefix: -cb
- id: in_abyss_sam_to_afg
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bank_transact
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_hawkeye
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_contigs_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_alignments_dots_am
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
- samtoafg
