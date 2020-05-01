#!/usr/bin/env cwl-runner

baseCommand:
- MassTraceExtractor
class: CommandLineTool
cwlVersion: v1.0
id: masstraceextractor
inputs:
- doc: "*        Input centroided mzML file (valid formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*       Output featureXML file with mass traces (valid formats: 'featureXML',\
    \ 'consensusXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Output file type -- default: determined from file extension or content (valid:\
    \ 'featureXML', 'consensusXML')"
  id: out_type
  inputBinding:
    prefix: -out_type
  type: string
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
- doc: Algorithm parameters section
  id: algorithm
  inputBinding:
    prefix: '- algorithm'
  type: boolean
- doc: ://www.openms.de/documentation/TOPP_MassTraceExtractor.html
  id: http
  inputBinding:
    prefix: '- http'
  type: boolean
