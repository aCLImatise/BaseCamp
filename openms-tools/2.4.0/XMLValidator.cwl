#!/usr/bin/env cwl-runner

baseCommand:
- XMLValidator
class: CommandLineTool
cwlVersion: v1.0
id: xmlvalidator
inputs:
- doc: "*        File to validate (valid formats: 'mzML', 'mzData', 'featureXML',\
    \ 'mzid', 'idXML', 'consensusXML', 'mzXML', 'ini', 'pepXML', 'TraML', 'xml')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Schema to validate against. If no schema is given, the file is validated against\
    \ the latest schema of the file type. (valid formats: 'xsd')"
  id: schema
  inputBinding:
    prefix: -schema
  type: File
- doc: Use the given TOPP INI file
  id: ini
  inputBinding:
    prefix: -ini
  type: File
- doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  id: threads
  inputBinding:
    prefix: -threads
  type: string
- doc: Writes the default configuration file
  id: write_ini
  inputBinding:
    prefix: -write_ini
  type: File
- doc: Shows all options (including advanced)
  id: helphelp
  inputBinding:
    prefix: --helphelp
  type: boolean
