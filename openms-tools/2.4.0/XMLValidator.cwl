class: CommandLineTool
id: XMLValidator.cwl
inputs:
- id: in
  doc: "*        File to validate (valid formats: 'mzML', 'mzData', 'featureXML',\
    \ 'mzid', 'idXML', 'consensusXML', 'mzXML', 'ini', 'pepXML', 'TraML', 'xml')"
  type: File
  inputBinding:
    prefix: -in
- id: schema
  doc: "Schema to validate against. If no schema is given, the file is validated against\
    \ the latest schema of the file type. (valid formats: 'xsd')"
  type: File
  inputBinding:
    prefix: -schema
- id: ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: string
  inputBinding:
    prefix: -threads
- id: write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs: []
cwlVersion: v1.1
baseCommand:
- XMLValidator
