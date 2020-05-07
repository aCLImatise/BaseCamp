class: CommandLineTool
id: singularity_inspect.cwl
inputs:
- id: app
  doc: Inspect an application specified in the container
  type: boolean
  inputBinding:
    prefix: --app
- id: labels
  doc: Show the labels associated with the image (default)
  type: boolean
  inputBinding:
    prefix: --labels
- id: def_file
  doc: Show the Singularity recipe file that was used to generate the image
  type: boolean
  inputBinding:
    prefix: --deffile
- id: run_script
  doc: Show the runscript for the image
  type: boolean
  inputBinding:
    prefix: --runscript
- id: test
  doc: Show the test script for the image
  type: boolean
  inputBinding:
    prefix: --test
- id: environment
  doc: the environment settings for the image
  type: string
  inputBinding:
    prefix: --environment
- id: json
  doc: Print structured json instead of sections
  type: boolean
  inputBinding:
    prefix: --json
- id: help_file
  doc: Inspect the runscript helpfile, if exists
  type: boolean
  inputBinding:
    prefix: --helpfile
outputs: []
cwlVersion: v1.1
baseCommand:
- singularity
- inspect
