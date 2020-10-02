class: CommandLineTool
id: mech_dump.cwl
inputs:
- id: in_headers
  doc: Dump HTTP response headers
  type: boolean
  inputBinding:
    prefix: --headers
- id: in_dump_table_forms
  doc: Dump table of forms (default action)
  type: boolean
  inputBinding:
    prefix: --forms
- id: in_links
  doc: Dump table of links
  type: boolean
  inputBinding:
    prefix: --links
- id: in_images
  doc: Dump table of images
  type: boolean
  inputBinding:
    prefix: --images
- id: in_dump_four_above
  doc: Dump all four of the above, in that order
  type: boolean
  inputBinding:
    prefix: --all
- id: in_text
  doc: Dumps the textual part of the web page
  type: boolean
  inputBinding:
    prefix: --text
- id: in_user
  doc: Set the username
  type: string
  inputBinding:
    prefix: --user
- id: in_password
  doc: Set the password
  type: string
  inputBinding:
    prefix: --password
- id: in_cookie_file
  doc: Set the filename to use for persistent cookies
  type: File
  inputBinding:
    prefix: --cookie-file
- id: in_agent
  doc: Specify the UserAgent to pass
  type: string
  inputBinding:
    prefix: --agent
- id: in_agent_alias
  doc: "Specify the alias for the UserAgent to pass.\nPick one of:\n* Windows IE 6\n\
    * Windows Mozilla\n* Mac Safari\n* Mac Mozilla\n* Linux Mozilla\n* Linux Konqueror"
  type: long
  inputBinding:
    prefix: --agent-alias
- id: in_show_urls_as
  doc: Show URLs as absolute, even if relative in the page
  type: boolean
  inputBinding:
    prefix: --absolute
- id: in_dump
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dumps
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_proxy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_set
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_show
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_specify
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_18
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_19
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_http
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_urls
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_var_22
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_order
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_settings
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_table
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_this
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_user_agent
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_are
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_as
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_filename
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: in_four
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_response
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_textual
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_var_35
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_var_36
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_part
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_specified
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_var_40
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_through
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_use
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_above
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_is
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_environment
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_persistent
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_relevant_dot
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_web
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_var_50
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mech-dump
