class: CommandLineTool
id: toil_cwl_runner_CommandLineTools..cwl
inputs:
- id: in_job_store
  doc: :us-west-2:jobstore \
  type: long?
  inputBinding:
    prefix: --jobStore
- id: in_real_time_logging
  doc: \
  type: boolean?
  inputBinding:
    prefix: --realTimeLogging
- id: in_loginfo
  doc: \
  type: boolean?
  inputBinding:
    prefix: --logInfo
- id: in_example_job_dot_yaml
  doc: 'Traceback (most recent call last):'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/toil:5.3.0--py_0
cwlVersion: v1.1
baseCommand:
- toil-cwl-runner
- CommandLineTools.
