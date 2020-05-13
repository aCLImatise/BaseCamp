class: CommandLineTool
id: PIPmiR_CLASSIFIER.cwl
inputs:
- id: m
  doc: 'Minimum read count for a mature to be considered expressed (Default: 10)'
  type: string
  inputBinding:
    prefix: -m
- id: x
  doc: 'Maximum amount of memory PIPmiR can use (Default: 4G)'
  type: long
  inputBinding:
    prefix: -X
- id: t
  doc: 'File containing classifier training data (Default: TrainingData.dat)'
  type: string
  inputBinding:
    prefix: -T
- id: d
  doc: Creates a log file of PIPmiR results at <output_header>_log.csv
  type: boolean
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- PIPmiR
- CLASSIFIER
