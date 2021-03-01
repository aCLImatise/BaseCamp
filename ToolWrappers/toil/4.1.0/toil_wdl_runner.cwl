class: CommandLineTool
id: toil_wdl_runner.cwl
inputs:
- id: in_job_store
  doc: "Optionally specify the directory that outputs are\nwritten to. Default is\
    \ the current working dir."
  type: Directory?
  inputBinding:
    prefix: --jobStore
- id: in_dev_mode
  doc: "1. Creates \"AST.out\", which holds the printed AST and\n\"mappings.out\"\
    , which holds the parsed task, workflow\ndictionaries that were generated. 2.\
    \ Saves the\ncompiled toil script generated from the wdl/json files\nfrom deletion.\
    \ 3. Skips autorunning the compiled\npython file."
  type: File?
  inputBinding:
    prefix: --dev_mode
- id: in_docker_user
  doc: "The user permissions that the docker containers will\nbe run with (and the\
    \ permissions set on any output\nfiles produced). Default is \"root\". Setting\
    \ this to\nNone will set this to the current user."
  type: string?
  inputBinding:
    prefix: --docker_user
- id: in_dest_bucket
  doc: "Specify a cloud bucket endpoint for output files.\n"
  type: string?
  inputBinding:
    prefix: --destBucket
- id: in_wdl_file
  doc: A WDL workflow file.
  type: string
  inputBinding:
    position: 0
- id: in_secondary_file
  doc: A secondary data file (json).
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_dev_mode
  doc: "1. Creates \"AST.out\", which holds the printed AST and\n\"mappings.out\"\
    , which holds the parsed task, workflow\ndictionaries that were generated. 2.\
    \ Saves the\ncompiled toil script generated from the wdl/json files\nfrom deletion.\
    \ 3. Skips autorunning the compiled\npython file."
  type: File?
  outputBinding:
    glob: $(inputs.in_dev_mode)
hints: []
cwlVersion: v1.1
baseCommand:
- toil-wdl-runner
