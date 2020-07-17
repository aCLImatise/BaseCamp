class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/venn_mpl.py.cwl
inputs:
- id: file_use_leftmost
  doc: File to use for the left-most circle
  type: string
  inputBinding:
    prefix: -a
- id: file_use_rightmost
  doc: File to use for the right-most circle
  type: string
  inputBinding:
    prefix: -b
- id: file_use_bottom
  doc: File to use for the bottom circle
  type: string
  inputBinding:
    prefix: -c
- id: labels
  doc: Optional comma-separated list of labels for a, b, and c
  type: string
  inputBinding:
    prefix: --labels
- id: colors
  doc: Comma-separated list of matplotlib-valid colors for circles a, b, and c. E.g.,
    --colors=r,b,k
  type: string
  inputBinding:
    prefix: --colors
- id: output_file_save
  doc: Output file to save as. Extension is meaningful, e.g., out.pdf, out.png, out.svg.
    Default is "out.png"
  type: string
  inputBinding:
    prefix: -o
- id: test
  doc: run test, overriding all other options.
  type: boolean
  inputBinding:
    prefix: --test
outputs: []
cwlVersion: v1.1
baseCommand:
- venn_mpl.py
