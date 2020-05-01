#!/usr/bin/env cwl-runner

baseCommand:
- MapAlignerSpectrum
class: CommandLineTool
cwlVersion: v1.0
id: mapalignerspectrum
inputs:
- doc: "*        Input files to align (all must have the same file type) (valid formats:\
    \ 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Output files (same file type as 'in'). Either this option or 'trafo_out' has\
    \ to be provided; they can be used together. (valid formats: 'mzML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Transformation output files. Either this option or 'out' has to be provided;\
    \ they can be used together. (valid formats: 'trafoXML')"
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
- doc: Options to control the modeling of retention time transformations from data
  id: model
  inputBinding:
    prefix: '- model'
  type: boolean
