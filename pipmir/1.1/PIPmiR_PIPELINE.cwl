class: CommandLineTool
id: PIPmiR_PIPELINE.cwl
inputs:
- id: l
  doc: 'Minimum size for a precursor sequence (Default: 50)'
  type: long
  inputBinding:
    prefix: -l
- id: l
  doc: 'Maximum size for a precursor sequence (Default: 500)'
  type: long
  inputBinding:
    prefix: -L
- id: s
  doc: 'Step size for calculating precursor sequence (Default: 2)'
  type: string
  inputBinding:
    prefix: -s
- id: m
  doc: 'Minimum read count for a mature to be considered expressed (Default: 10)'
  type: string
  inputBinding:
    prefix: -m
- id: p
  doc: 'Number of threads the PIPmiR can use (Default: 1)'
  type: string
  inputBinding:
    prefix: -p
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
- id: r
  doc: 'Location of RNAfold (Default: /home/dc97/bin/RNAfold)'
  type: string
  inputBinding:
    prefix: -R
- id: d
  doc: Creates a log file of PIPmiR results at <output_header>_log.csv
  type: boolean
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- PIPmiR
- PIPELINE
