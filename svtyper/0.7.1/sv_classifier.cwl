class: CommandLineTool
id: sv_classifier.py.cwl
inputs:
- id: input
  doc: VCF input [stdin]
  type: string
  inputBinding:
    prefix: --input
- id: gender
  doc: 'tab delimited file of sample genders (male=1, female=2) ex: SAMPLE_A    2'
  type: File
  inputBinding:
    prefix: --gender
- id: exclude
  doc: list of samples to exclude from classification algorithms
  type: File
  inputBinding:
    prefix: --exclude
- id: annotation
  doc: BED file of annotated elements
  type: string
  inputBinding:
    prefix: --annotation
- id: fraction
  doc: fraction of reciprocal overlap to apply annotation to variant [0.9]
  type: double
  inputBinding:
    prefix: --fraction
- id: slope_threshold
  doc: minimum slope absolute value of regression line to classify as DEL or DUP[1.0]
  type: double
  inputBinding:
    prefix: --slope_threshold
- id: r_squared_threshold
  doc: minimum R^2 correlation value of regression line to classify as DEL or DUP
    [0.2]
  type: double
  inputBinding:
    prefix: --rsquared_threshold
outputs: []
cwlVersion: v1.1
baseCommand:
- sv_classifier.py
