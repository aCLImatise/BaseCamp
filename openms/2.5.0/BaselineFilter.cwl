#!/usr/bin/env cwl-runner

baseCommand:
- BaselineFilter
class: CommandLineTool
cwlVersion: v1.0
id: baselinefilter
inputs:
- doc: "*                Input raw data file  (valid formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*               Output raw data file  (valid formats: 'mzML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Length of the structuring element (should be wider than maximal peak width\
    \ - see documentation). (default: '3.0')"
  id: struc_elem_length
  inputBinding:
    prefix: -struc_elem_length
  type: long
- doc: "Unit of 'struc_elem_length' parameter. (default: 'Thomson' valid: 'Thomson',\
    \ 'DataPoints')"
  id: struc_elem_unit
  inputBinding:
    prefix: -struc_elem_unit
  type: string
- doc: "The name of the morphological filter to be applied. If you are unsure, use\
    \ the default. (default: 'tophat' valid: 'identity', 'erosion', 'dilation', 'opening',\
    \ 'closing', 'gradient' , 'tophat', 'bothat', 'erosion_simple', 'dilation_simple')"
  id: method
  inputBinding:
    prefix: -method
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
