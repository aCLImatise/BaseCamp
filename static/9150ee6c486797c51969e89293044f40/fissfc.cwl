class: CommandLineTool
id: fissfc.cwl
inputs:
- id: in_url
  doc: "Firecloud API root URL [default:\nhttps://api.firecloud.org/api/]"
  type: string?
  inputBinding:
    prefix: --url
- id: in_credentials
  doc: Firecloud credentials file
  type: File?
  inputBinding:
    prefix: --credentials
- id: in_verbose
  doc: "Emit progressively more detailed feedback during\nexecution, e.g. to confirm\
    \ when actions have completed\nor to show URL and parameters of REST calls. Multiple\n\
    -V may be given."
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_yes
  doc: Assume yes for any prompts
  type: boolean?
  inputBinding:
    prefix: --yes
- id: in_list_search_commands
  doc: "[CMD], --list [CMD]\nlist or search available commands and exit"
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_function
  doc: Show the code for the given command(s) and exit
  type: string[]
  inputBinding:
    prefix: --function
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fissfc
