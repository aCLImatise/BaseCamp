#!/usr/bin/env cwl-runner

baseCommand:
- MapAlignerPoseClustering
class: CommandLineTool
cwlVersion: v1.0
id: mapalignerposeclustering
inputs:
- doc: "*               Input files to align (all must have the same file type) (valid\
    \ formats: 'featureXML', 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Output files (same file type as 'in'). This option or 'trafo_out' has to be\
    \ provided; they can be used together. (valid formats: 'featureXML', 'mzML')"
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
- doc: ":file <file>     File to use as reference (same file format as input files\
    \ required) (valid formats: 'featureXML', 'mzML')"
  id: reference
  inputBinding:
    prefix: -reference
  type: boolean
- doc: ":index <number>  Use one of the input files as reference ('1' for the first\
    \ file, etc.). If '0', no explicit reference is set - the algorithm will select\
    \ a reference. (default: '0' min: '0')"
  id: reference
  inputBinding:
    prefix: -reference
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
- doc: Algorithm parameters section
  id: algorithm
  inputBinding:
    prefix: '- algorithm'
  type: boolean
- doc: ://www.openms.de/documentation/TOPP_MapAlignerPoseClustering.html
  id: http
  inputBinding:
    prefix: '- http'
  type: boolean
