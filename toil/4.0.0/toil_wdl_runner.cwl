class: CommandLineTool
id: toil_wdl_runner.cwl
inputs:
- id: wdl_file
  doc: A WDL workflow file.
  type: string
  inputBinding:
    position: 0
- id: secondary_file
  doc: A secondary data file (json).
  type: string
  inputBinding:
    position: 1
- id: outdir
  doc: Optionally specify the directory that outputs are written to. Default is the
    current working dir.
  type: string
  inputBinding:
    prefix: --outdir
- id: dev_mode
  doc: 1. Creates "AST.out", which holds the printed AST and "mappings.out", which
    holds the parsed task, workflow dictionaries that were generated. 2. Saves the
    compiled toil script generated from the wdl/json files from deletion. 3. Skips
    autorunning the compiled python file.
  type: string
  inputBinding:
    prefix: --dev_mode
- id: docker_user
  doc: The user permissions that the docker containers will be run with (and the permissions
    set on any output files produced). Default is "root". Setting this to None will
    set this to the current user.
  type: string
  inputBinding:
    prefix: --docker_user
- id: dest_bucket
  doc: Specify a cloud bucket endpoint for output files.
  type: string
  inputBinding:
    prefix: --destBucket
outputs: []
cwlVersion: v1.1
baseCommand:
- toil-wdl-runner
