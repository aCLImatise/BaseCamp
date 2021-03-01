class: CommandLineTool
id: venn_mpl.py.cwl
inputs:
- id: in_file_use_leftmost
  doc: File to use for the left-most circle
  type: File?
  inputBinding:
    prefix: -a
- id: in_file_use_rightmost
  doc: File to use for the right-most circle
  type: File?
  inputBinding:
    prefix: -b
- id: in_file_use_bottom
  doc: File to use for the bottom circle
  type: File?
  inputBinding:
    prefix: -c
- id: in_labels
  doc: Optional comma-separated list of labels for a, b, and c
  type: string?
  inputBinding:
    prefix: --labels
- id: in_colors
  doc: "Comma-separated list of matplotlib-valid colors for circles\na, b, and c.\
    \ E.g., --colors=r,b,k"
  type: string?
  inputBinding:
    prefix: --colors
- id: in_output_file_save
  doc: "Output file to save as. Extension is meaningful, e.g.,\nout.pdf, out.png,\
    \ out.svg. Default is \"out.png\""
  type: File?
  inputBinding:
    prefix: -o
- id: in_test
  doc: run test, overriding all other options.
  type: boolean?
  inputBinding:
    prefix: --test
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_save
  doc: "Output file to save as. Extension is meaningful, e.g.,\nout.pdf, out.png,\
    \ out.svg. Default is \"out.png\""
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_save)
hints: []
cwlVersion: v1.1
baseCommand:
- venn_mpl.py
