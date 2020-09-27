class: CommandLineTool
id: sv_classifier.py.cwl
inputs:
- id: in_input
  doc: VCF input [stdin]
  type: string
  inputBinding:
    prefix: --input
- id: in_gender
  doc: "tab delimited file of sample genders (male=1, female=2)\nex: SAMPLE_A    2"
  type: File
  inputBinding:
    prefix: --gender
- id: in_exclude
  doc: list of samples to exclude from classification algorithms
  type: File
  inputBinding:
    prefix: --exclude
- id: in_annotation
  doc: BED file of annotated elements
  type: File
  inputBinding:
    prefix: --annotation
- id: in_fraction
  doc: fraction of reciprocal overlap to apply annotation to variant [0.9]
  type: double
  inputBinding:
    prefix: --fraction
- id: in_slope_threshold
  doc: minimum slope absolute value of regression line to classify as DEL or DUP[1.0]
  type: double
  inputBinding:
    prefix: --slope_threshold
- id: in_r_squared_threshold
  doc: "minimum R^2 correlation value of regression line to classify as DEL or DUP\
    \ [0.2]\n"
  type: double
  inputBinding:
    prefix: --rsquared_threshold
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sv_classifier.py
