class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/PIPmiR_CLASSIFIER.cwl
inputs:
- id: minimum_read_count
  doc: 'Minimum read count for a mature to be considered expressed (Default: 10)'
  type: string
  inputBinding:
    prefix: -m
- id: maximum_amount_pipmir
  doc: 'Maximum amount of memory PIPmiR can use (Default: 4G)'
  type: long
  inputBinding:
    prefix: -X
- id: file_containing_trainingdatadat
  doc: 'File containing classifier training data (Default: TrainingData.dat)'
  type: string
  inputBinding:
    prefix: -T
- id: creates_log_file
  doc: Creates a log file of PIPmiR results at <output_header>_log.csv
  type: boolean
  inputBinding:
    prefix: -d
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -P
- id: a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- PIPmiR
- CLASSIFIER
