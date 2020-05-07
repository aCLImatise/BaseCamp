class: CommandLineTool
id: split_libraries_fastq.py.cwl
inputs:
- id: sequence_read_fps
  doc: the sequence read fastq files (comma-separated if more than one) [REQUIRED]
  type: string
  inputBinding:
    prefix: --sequence_read_fps
- id: output_dir
  doc: directory to store output files [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- split_libraries_fastq.py
