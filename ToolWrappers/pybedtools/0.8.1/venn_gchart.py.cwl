class: CommandLineTool
id: venn_gchart.py.cwl
inputs:
- id: in_file_use_leftmost
  doc: File to use for the left-most circle
  type: File
  inputBinding:
    prefix: -a
- id: in_file_use_rightmost
  doc: File to use for the right-most circle
  type: File
  inputBinding:
    prefix: -b
- id: in_file_use_bottom
  doc: File to use for the bottom circle
  type: File
  inputBinding:
    prefix: -c
- id: in_colors
  doc: "Optional comma-separated list of hex colors for circles a,\nb, and c. E.g.\
    \ 00FF00,FF0000,0000FF"
  type: long
  inputBinding:
    prefix: --colors
- id: in_labels
  doc: Optional comma-separated list of labels for a, b, and c
  type: string
  inputBinding:
    prefix: --labels
- id: in_size
  doc: Optional size of PNG, in pixels. Default is "300x300"
  type: long
  inputBinding:
    prefix: --size
- id: in_output_file_save
  doc: Output file to save as, in PNG format
  type: File
  inputBinding:
    prefix: -o
- id: in_test
  doc: run test, overriding all other options.
  type: boolean
  inputBinding:
    prefix: --test
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_save
  doc: Output file to save as, in PNG format
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_save)
cwlVersion: v1.1
baseCommand:
- venn_gchart.py
