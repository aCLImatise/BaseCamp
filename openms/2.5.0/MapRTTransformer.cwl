#!/usr/bin/env cwl-runner

baseCommand:
- MapRTTransformer
class: CommandLineTool
cwlVersion: v1.0
id: maprttransformer
inputs:
- doc: "Input file to transform (separated by blanks) (valid formats: 'mzML', 'featureXML',\
    \ 'consensusXML', 'idXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Output file (same file type as 'in'). This option or 'trafo_out' has to be\
    \ provided; they can be used together. (valid formats: 'mzML', 'featureXML', 'consensusXML',\
    \ 'idXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "*    Transformation to apply (valid formats: 'trafoXML')"
  id: traf_o_in
  inputBinding:
    prefix: -trafo_in
  type: File
- doc: "Transformation output file. This option or 'out' has to be provided; they\
    \ can be used together. (valid formats: 'trafoXML')"
  id: traf_o_out
  inputBinding:
    prefix: -trafo_out
  type: File
- doc: Invert transformation (approximatively) before applying it
  id: invert
  inputBinding:
    prefix: -invert
  type: boolean
- doc: Store the original retention times (before transformation) as meta data in
    the output file
  id: store_original_rt
  inputBinding:
    prefix: -store_original_rt
  type: boolean
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
- doc: Options to control the modeling of retention time transformations from data
  id: model
  inputBinding:
    prefix: '- model'
  type: boolean
- doc: ://www.openms.de/documentation/TOPP_MapRTTransformer.html
  id: http
  inputBinding:
    prefix: '- http'
  type: boolean
