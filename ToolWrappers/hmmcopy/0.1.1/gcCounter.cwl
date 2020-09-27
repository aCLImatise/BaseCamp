class: CommandLineTool
id: gcCounter.cwl
inputs:
- id: in_seg
  doc: Outputs in SEG format
  type: boolean
  inputBinding:
    prefix: --seg
- id: in_window
  doc: Specify the size of non-overlapping windows [1000]
  type: long
  inputBinding:
    prefix: --window
- id: in_list
  doc: List all chromosomes in FASTA reference file
  type: boolean
  inputBinding:
    prefix: --list
- id: in_chromosome
  doc: "Specify the entries and order of sequences to analyze [ALL],\nthe <string>\
    \ should be a comma-delimited list (NO spaces)"
  type: string
  inputBinding:
    prefix: --chromosome
- id: in_fast_a_reference
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcCounter
