class: CommandLineTool
id: _toil_worker.cwl
inputs:
- id: in_context
  doc: "Pickled, base64-encoded context manager(s) to run job\ninside of. Allows the\
    \ Toil leader to pass setup and\ncleanup work provided by the batch system, in\
    \ the form of\npickled Python context manager objects, that the worker\ncan then\
    \ run before/after the job on the batch system's\nbehalf.\n"
  type: long?
  inputBinding:
    prefix: --context
- id: in_job_name
  doc: Text name of the job being run
  type: string
  inputBinding:
    position: 0
- id: in_job_store_locator
  doc: Information required to connect to the job store
  type: string
  inputBinding:
    position: 1
- id: in_job_store_id
  doc: ID of the job within the job store
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/toil:5.2.0--py_0
cwlVersion: v1.1
baseCommand:
- _toil_worker
