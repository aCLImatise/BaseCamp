class: CommandLineTool
id: cnv_annotate.py_annotate.cwl
inputs:
- id: annotate
  doc: Genome annotations.
  type: string
  inputBinding:
    position: 0
- id: cnv_file
  doc: CNVkit .cnn or .cnr file.
  type: string
  inputBinding:
    position: 1
- id: output
  doc: Output filename.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- cnv_annotate.py
- annotate
