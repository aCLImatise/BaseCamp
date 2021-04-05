class: CommandLineTool
id: _toil_mesos_executor.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/toil:5.3.0--py_0
cwlVersion: v1.1
baseCommand:
- _toil_mesos_executor
