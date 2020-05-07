class: CommandLineTool
id: extract_barcodes.py.cwl
inputs:
- id: fastq1
  doc: input fastq filepath. This file is considered read 1. [REQUIRED]
  type: string
  inputBinding:
    prefix: --fastq1
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_barcodes.py
