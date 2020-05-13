class: CommandLineTool
id: split_libraries_lea_seq.py.cwl
inputs:
- id: sequence_read_fps
  doc: the forward and reverse sequence read fastq files (comma-separated) [REQUIRED]
  type: string
  inputBinding:
    prefix: --sequence_read_fps
- id: output_dir
  doc: directory to store output files [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
- id: mapping_fp
  doc: metadata mapping file [REQUIRED]
  type: string
  inputBinding:
    prefix: --mapping_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- split_libraries_lea_seq.py
