#!/usr/bin/env cwl-runner

baseCommand:
- MapAlignerTreeGuided
class: CommandLineTool
cwlVersion: v1.0
id: mapalignertreeguided
inputs:
- doc: "*        Input files to align (all must have the same file type) (valid formats:\
    \ 'featureXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Output files (same file type as 'in'). This option or 'trafo_out' has to be\
    \ provided; they can be used together. (valid formats: 'featureXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Transformation output files. This option or 'out' has to be provided; they\
    \ can be used together. (valid formats: 'trafoXML')"
  id: traf_o_out
  inputBinding:
    prefix: -trafo_out
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
- doc: Algorithm parameters section
  id: algorithm
  inputBinding:
    prefix: '- algorithm'
  type: boolean
- doc: ://www.openms.de/documentation/TOPP_MapAlignerTreeGuided.html
  id: http
  inputBinding:
    prefix: '- http'
  type: boolean
