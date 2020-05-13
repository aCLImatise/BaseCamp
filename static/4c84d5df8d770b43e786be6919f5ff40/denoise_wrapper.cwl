class: CommandLineTool
id: denoise_wrapper.py.cwl
inputs:
- id: input_file
  doc: path to flowgram files (.sff.txt), comma separated [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_file
- id: fast_a_file
  doc: path to fasta file from split_libraries.py [REQUIRED]
  type: string
  inputBinding:
    prefix: --fasta_file
outputs: []
cwlVersion: v1.1
baseCommand:
- denoise_wrapper.py
