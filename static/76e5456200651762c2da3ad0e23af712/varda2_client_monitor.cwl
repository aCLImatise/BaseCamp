class: CommandLineTool
id: varda2_client_monitor.cwl
inputs:
- id: in_task_file
  doc: "Filename of tasks to monitor\n"
  type: File?
  inputBinding:
    prefix: --task-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/varda2-client:0.9--py_0
cwlVersion: v1.1
baseCommand:
- varda2-client
- monitor
