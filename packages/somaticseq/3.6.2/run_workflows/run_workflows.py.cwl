class: CommandLineTool
id: run_workflows.py.cwl
inputs:
- id: in_threads
  doc: '[PARTITION_NUMBERING [PARTITION_NUMBERING ...]], --partition-numbering [PARTITION_NUMBERING
    [PARTITION_NUMBERING ...]]'
  type: string?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/somaticseq:3.6.2--py_0
cwlVersion: v1.1
baseCommand:
- run_workflows.py
