class: CommandLineTool
id: bazel_scan.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bazel-scan.py
