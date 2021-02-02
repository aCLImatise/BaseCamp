class: CommandLineTool
id: ../../../fastq_utils_sort.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastq-utils
- sort
