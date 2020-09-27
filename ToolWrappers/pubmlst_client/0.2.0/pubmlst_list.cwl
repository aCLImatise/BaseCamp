class: CommandLineTool
id: pubmlst_list.cwl
inputs:
- id: in_pattern
  doc: regex pattern to filter scheme names
  type: string
  inputBinding:
    prefix: --pattern
- id: in_exclude_pattern
  doc: regex pattern to filter scheme names
  type: string
  inputBinding:
    prefix: --exclude_pattern
- id: in_names_only
  doc: Only show scheme names
  type: boolean
  inputBinding:
    prefix: --names_only
- id: in_base_url
  doc: "Base URL for the API. Suggested values are:\nhttp://rest.pubmlst.org/db (default),\n\
    https://bigsdb.pasteur.fr/api/db\n"
  type: string
  inputBinding:
    prefix: --base-url
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pubmlst_list
