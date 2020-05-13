class: CommandLineTool
id: perl_reversion.cwl
inputs:
- id: set
  doc: set the project version number
  type: string
  inputBinding:
    prefix: -set
- id: current
  doc: specify the current version
  type: string
  inputBinding:
    prefix: -current
- id: normal
  doc: print current version in a specific format OR
  type: boolean
  inputBinding:
    prefix: -normal
- id: numi_fy
  doc: force versions to be a specific format,
  type: boolean
  inputBinding:
    prefix: -numify
- id: stringify
  doc: with -set or -bump
  type: boolean
  inputBinding:
    prefix: -stringify
- id: dry_run
  doc: just go through the motions, but don't  actually save files
  type: boolean
  inputBinding:
    prefix: -dryrun
outputs: []
cwlVersion: v1.1
baseCommand:
- perl-reversion
