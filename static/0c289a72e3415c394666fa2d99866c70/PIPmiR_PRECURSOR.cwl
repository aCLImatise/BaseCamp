class: CommandLineTool
id: PIPmiR_PRECURSOR.cwl
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
- PRECURSOR
