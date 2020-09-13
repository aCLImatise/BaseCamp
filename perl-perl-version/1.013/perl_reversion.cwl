class: CommandLineTool
id: ../../../perl_reversion.cwl
inputs:
- id: in_man
  doc: view man page for perl-reversion
  type: boolean
  inputBinding:
    prefix: -man
- id: in_bump
  doc: make the smallest possible increment
  type: boolean
  inputBinding:
    prefix: -bump
- id: in_bump_revision
  doc: increment the specified version component
  type: boolean
  inputBinding:
    prefix: -bump-revision
- id: in_bump_version
  doc: ''
  type: boolean
  inputBinding:
    prefix: -bump-version
- id: in_bump_subversion
  doc: ''
  type: boolean
  inputBinding:
    prefix: -bump-subversion
- id: in_bump_alpha
  doc: ''
  type: boolean
  inputBinding:
    prefix: -bump-alpha
- id: in_set
  doc: set the project version number
  type: long
  inputBinding:
    prefix: -set
- id: in_current
  doc: specify the current version
  type: string
  inputBinding:
    prefix: -current
- id: in_normal
  doc: print current version in a specific format OR
  type: boolean
  inputBinding:
    prefix: -normal
- id: in_numi_fy
  doc: force versions to be a specific format,
  type: boolean
  inputBinding:
    prefix: -numify
- id: in_stringify
  doc: with -set or -bump
  type: boolean
  inputBinding:
    prefix: -stringify
- id: in_dry_run
  doc: "just go through the motions, but don't\nactually save files"
  type: boolean
  inputBinding:
    prefix: -dryrun
- id: in_one_dot_one
  doc: =>  1.2
  type: double
  inputBinding:
    position: 0
- id: in_one_dot_one_dot_one
  doc: =>  1.1.2
  type: double
  inputBinding:
    position: 1
- id: in_updated_dot
  doc: '"-normal"'
  type: string
  inputBinding:
    position: 0
- id: in_version_dot
  doc: Alone, these options control how the current (found) version is
  type: string
  inputBinding:
    position: 0
- id: in_displayed_dot
  doc: With "-bump" or "-set", also update version strings to have the
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- perl-reversion
