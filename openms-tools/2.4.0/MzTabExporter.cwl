#!/usr/bin/env cwl-runner

baseCommand:
- MzTabExporter
class: CommandLineTool
cwlVersion: v1.0
id: mztabexporter
inputs:
- doc: "Input files used to generate the mzTab file. (valid formats: 'featureXML',\
    \ 'consensusXML', 'idXML', 'mzid')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*       Output file (mzTab) (valid formats: 'mzTab')"
  id: out
  inputBinding:
    prefix: -out
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
