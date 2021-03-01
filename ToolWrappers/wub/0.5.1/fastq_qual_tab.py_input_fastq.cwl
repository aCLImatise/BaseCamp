class: CommandLineTool
id: fastq_qual_tab.py_input_fastq.cwl
inputs:
- id: in_t
  doc: ''
  type: string?
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- fastq_qual_tab.py
- input_fastq
