class: CommandLineTool
id: bracken_build_THREADS.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bracken-build
- THREADS
