class: CommandLineTool
id: omero_chown.cwl
inputs:
- id: usr
  doc: user to transfer ownership of specified objects and/or all objects owned by
    specified user(s) to
  type: string
  inputBinding:
    position: 0
- id: obj
  doc: objects to be processed in the form <Class>:<Id> and/or user(s) to transfer
    all data from in the form Experimenter:<Id>
  type: string
  inputBinding:
    position: 1
- id: wait
  doc: Number of seconds to wait for the processing to complete (Indefinite < 0; No
    wait=0).
  type: string
  inputBinding:
    prefix: --wait
- id: include
  doc: Modifies the given option by including a list of classes
  type: string
  inputBinding:
    prefix: --include
- id: exclude
  doc: Modifies the given option by excluding a list of classes
  type: string
  inputBinding:
    prefix: --exclude
- id: ordered
  doc: Pass multiple objects to commands strictly in the order given, otherwise group
    into as few commands as possible.
  type: boolean
  inputBinding:
    prefix: --ordered
- id: list
  doc: Print a list of all available graph specs
  type: boolean
  inputBinding:
    prefix: --list
- id: report
  doc: Print more detailed report of each action
  type: boolean
  inputBinding:
    prefix: --report
- id: dry_run
  doc: Do a dry run of the command, providing a report of what would have been done
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: force
  doc: Force an action that otherwise defaults to a dry run
  type: boolean
  inputBinding:
    prefix: --force
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- chown
