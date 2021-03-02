class: CommandLineTool
id: fs.cwl
inputs:
- id: in__verbose_mode
  doc: ':    Verbose mode'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_new_settings_file
  doc: ':    New settings file, overwriting any previous file'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_go
  doc: ': Do the next things that are necessary to get a complete set of finestructure
    runs.'
  type: boolean?
  inputBinding:
    prefix: -go
- id: in_import
  doc: ': Import some settings from an external file. If you need to set any non-trivial
    settings, this is the way to do it. See "fs -hh" for more details.'
  type: File?
  inputBinding:
    prefix: -import
- id: in_create_id
  doc: ': Create an ID file from a PROVIDED phase file. Individuals are labelled IND1-IND<N>.'
  type: File?
  inputBinding:
    prefix: -createid
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fs
