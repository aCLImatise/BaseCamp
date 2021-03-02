class: CommandLineTool
id: XMLValidator.cwl
inputs:
- id: in_in
  doc: "*        File to validate (valid formats: 'mzML', 'mzData', 'featureXML',\
    \ 'mzid', 'idXML', 'consensusXML', 'mzXML', 'ini', 'pepXML', 'traML', 'xml')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_schema
  doc: "Schema to validate against.\nIf no schema is given, the file is validated\
    \ against the latest schema of the file type. (valid formats: 'xsd')"
  type: File?
  inputBinding:
    prefix: -schema
- id: in_ini
  doc: Use the given TOPP INI file
  type: File?
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long?
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File?
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean?
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openms:2.6.0--h4afb90d_0
cwlVersion: v1.1
baseCommand:
- XMLValidator
