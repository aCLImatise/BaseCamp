class: CommandLineTool
id: ../../../bamQC.py.cwl
inputs:
- id: bam_file_in
  doc: 'Input BAM file (default: None)'
  type: string
  inputBinding:
    prefix: --bam-file-in
- id: max_length
  doc: 'max frag length to consider (default: 1000)'
  type: long
  inputBinding:
    prefix: --max-length
outputs: []
cwlVersion: v1.1
baseCommand:
- bamQC.py
