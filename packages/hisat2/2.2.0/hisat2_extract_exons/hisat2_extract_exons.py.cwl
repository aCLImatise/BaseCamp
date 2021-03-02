class: CommandLineTool
id: ../../../hisat2_extract_exons.py.cwl
inputs:
- id: in_verbose
  doc: also print some statistics to stderr
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hisat2_extract_exons.py
