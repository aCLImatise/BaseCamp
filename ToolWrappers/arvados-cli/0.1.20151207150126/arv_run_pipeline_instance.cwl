class: CommandLineTool
id: arv_run_pipeline_instance.cwl
inputs:
- id: in_dry_run
  doc: "Do not start any new jobs or wait for existing jobs to\nfinish. Just find\
    \ out whether jobs are finished,\nqueued, or running for each component."
  type: boolean?
  inputBinding:
    prefix: --dry-run
- id: in_status_text
  doc: "Store plain text status in given file. (Default:\n/dev/stdout)"
  type: File?
  inputBinding:
    prefix: --status-text
- id: in_status_json
  doc: "Store json-formatted pipeline in given file. (Default:\n/dev/null)"
  type: File?
  inputBinding:
    prefix: --status-json
- id: in_no_wait
  doc: "Do not wait for jobs to finish. Just look up status,\nsubmit new jobs if needed,\
    \ and exit."
  type: boolean?
  inputBinding:
    prefix: --no-wait
- id: in_no_reuse
  doc: "Do not reuse existing jobs to satisfy pipeline\ncomponents. Submit a new job\
    \ for every component."
  type: boolean?
  inputBinding:
    prefix: --no-reuse
- id: in_debug
  doc: Print extra debugging information on stderr.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_debug_level
  doc: Set debug verbosity level.
  type: string?
  inputBinding:
    prefix: --debug-level
- id: in_template
  doc: "UUID of pipeline template, or path to local pipeline\ntemplate file."
  type: File?
  inputBinding:
    prefix: --template
- id: in_instance
  doc: UUID of pipeline instance.
  type: string?
  inputBinding:
    prefix: --instance
- id: in_submit
  doc: "Submit the pipeline instance to the server, and exit.\nLet the Crunch dispatch\
    \ service satisfy the components\nby finding/running jobs."
  type: boolean?
  inputBinding:
    prefix: --submit
- id: in_run_pipeline_here
  doc: "Manage the pipeline instance in-process. Submit jobs\nto Crunch as needed.\
    \ Do not exit until the pipeline\nfinishes (or fails)."
  type: boolean?
  inputBinding:
    prefix: --run-pipeline-here
- id: in_run_jobs_here
  doc: "Run jobs in the local terminal session instead of\nsubmitting them to Crunch.\
    \ Implies\n--run-pipeline-here. Note: this results in a\nsignificantly different\
    \ job execution environment, and\nsome Crunch features are not supported. It can\
    \ be\nnecessary to modify a pipeline in order to make it run\nthis way."
  type: boolean?
  inputBinding:
    prefix: --run-jobs-here
- id: in_run_here
  doc: Synonym for --run-jobs-here.
  type: boolean?
  inputBinding:
    prefix: --run-here
- id: in_description
  doc: Description for the pipeline instance.
  type: string?
  inputBinding:
    prefix: --description
- id: in_project_uuid
  doc: UUID of the project for the pipeline instance.
  type: string?
  inputBinding:
    prefix: --project-uuid
- id: in_name_dot
  doc: component_name::param_name=param_value
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- arv-run-pipeline-instance
