class: CommandLineTool
id: fissfc.cwl
inputs:
- id: url
  doc: 'Firecloud API root URL [default: https://api.firecloud.org/api/]'
  type: string
  inputBinding:
    prefix: --url
- id: credentials
  doc: Firecloud credentials file
  type: string
  inputBinding:
    prefix: --credentials
- id: verbose
  doc: Emit progressively more detailed feedback during execution, e.g. to confirm
    when actions have completed or to show URL and parameters of REST calls. Multiple
    -V may be given.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: yes
  doc: Assume yes for any prompts
  type: boolean
  inputBinding:
    prefix: --yes
- id: l
  doc: '[CMD], --list [CMD] list or search available commands and exit'
  type: boolean
  inputBinding:
    prefix: -l
- id: function
  doc: Show the code for the given command(s) and exit
  type: string[]
  inputBinding:
    prefix: --function
outputs: []
cwlVersion: v1.1
baseCommand:
- fissfc
