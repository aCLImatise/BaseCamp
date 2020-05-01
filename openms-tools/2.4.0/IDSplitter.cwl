#!/usr/bin/env cwl-runner

baseCommand:
- IDSplitter
class: CommandLineTool
cwlVersion: v1.0
id: idsplitter
inputs:
- doc: "*        Input file (data annotated with identifications) (valid formats:\
    \ 'mzML', 'featureXML', 'consensusXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Output file (data without identifications). Either 'out' or 'id_out' are required.\
    \ They can be used together. (valid formats: 'mzML', 'featureXML', 'consensusXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Output file (identifications). Either 'out' or 'id_out' are required. They\
    \ can be used together. (valid formats: 'idXML')"
  id: id_out
  inputBinding:
    prefix: -id_out
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
