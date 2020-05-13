class: CommandLineTool
id: mech_dump.cwl
inputs:
- id: headers
  doc: Dump HTTP response headers
  type: boolean
  inputBinding:
    prefix: --headers
- id: forms
  doc: Dump table of forms (default action)
  type: boolean
  inputBinding:
    prefix: --forms
- id: links
  doc: Dump table of links
  type: boolean
  inputBinding:
    prefix: --links
- id: images
  doc: Dump table of images
  type: boolean
  inputBinding:
    prefix: --images
- id: all
  doc: Dump all four of the above, in that order
  type: boolean
  inputBinding:
    prefix: --all
- id: text
  doc: Dumps the textual part of the web page
  type: boolean
  inputBinding:
    prefix: --text
- id: user
  doc: Set the username
  type: string
  inputBinding:
    prefix: --user
- id: password
  doc: Set the password
  type: string
  inputBinding:
    prefix: --password
- id: cookie_file
  doc: Set the filename to use for persistent cookies
  type: File
  inputBinding:
    prefix: --cookie-file
- id: agent
  doc: Specify the UserAgent to pass
  type: string
  inputBinding:
    prefix: --agent
- id: agent_alias
  doc: 'Specify the alias for the UserAgent to pass. Pick one of: * Windows IE 6 *
    Windows Mozilla * Mac Safari * Mac Mozilla * Linux Mozilla * Linux Konqueror'
  type: string
  inputBinding:
    prefix: --agent-alias
- id: absolute
  doc: Show URLs as absolute, even if relative in the page
  type: boolean
  inputBinding:
    prefix: --absolute
outputs: []
cwlVersion: v1.1
baseCommand:
- mech-dump
