class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/PIPmiR_PRECURSOR.cwl
inputs:
- id: minimum_size_precursor
  doc: 'Minimum size for a precursor sequence (Default: 50)'
  type: long
  inputBinding:
    prefix: -l
- id: maximum_size_precursor
  doc: 'Maximum size for a precursor sequence (Default: 500)'
  type: long
  inputBinding:
    prefix: -L
- id: step_size_calculating
  doc: 'Step size for calculating precursor sequence (Default: 2)'
  type: string
  inputBinding:
    prefix: -s
- id: number_threads_pipmir
  doc: 'Number of threads the PIPmiR can use (Default: 1)'
  type: string
  inputBinding:
    prefix: -p
- id: maximum_amount_pipmir
  doc: 'Maximum amount of memory PIPmiR can use (Default: 4G)'
  type: long
  inputBinding:
    prefix: -X
- id: location_rnafold_default
  doc: 'Location of RNAfold (Default: /home/dc97/bin/RNAfold)'
  type: string
  inputBinding:
    prefix: -R
- id: creates_log_file
  doc: Creates a log file of PIPmiR results at <output_header>_log.csv
  type: boolean
  inputBinding:
    prefix: -d
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- PIPmiR
- PRECURSOR
