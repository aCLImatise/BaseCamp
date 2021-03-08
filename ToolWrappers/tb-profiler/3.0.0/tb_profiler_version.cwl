class: CommandLineTool
id: tb_profiler_version.cwl
inputs:
- id: in_tb_profiler
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tb-profiler:3.0.0--pypyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- tb-profiler
- version
