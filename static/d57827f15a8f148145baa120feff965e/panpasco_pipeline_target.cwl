class: CommandLineTool
id: panpasco_pipeline_target.cwl
inputs:
- id: in__dryrun_execute
  doc: ',   --dryrun           do not execute anything'
  type: boolean
  inputBinding:
    prefix: -n
- id: in__printshellcmds_print
  doc: ',   --printshellcmds   print out the shell commands that will be executed'
  type: boolean
  inputBinding:
    prefix: -p
- id: in__timestamp_add
  doc: ',   --timestamp        add a timestamp to all logging output'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_jobs
  doc: use at most N cores in parallel
  type: string
  inputBinding:
    prefix: --jobs
- id: in_config_file
  doc: ''
  type: File
  inputBinding:
    prefix: --configfile
- id: in_pan_pasco_pipeline
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_snake_make
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- panpasco-pipeline
- target
