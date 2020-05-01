#!/usr/bin/env cwl-runner

baseCommand:
- IDRTCalibration
class: CommandLineTool
cwlVersion: v1.0
id: idrtcalibration
inputs:
- doc: "*                  Input file  (valid formats: 'idXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*                 Output file  (valid formats: 'idXML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "The RT of the first calibrant in the reference file. (default: '0.1')"
  id: calibra_nt_1_reference
  inputBinding:
    prefix: -calibrant_1_reference
  type: string
- doc: "The RT of the second calibrant in the reference file. (default: '0.9')"
  id: calibra_nt_2_reference
  inputBinding:
    prefix: -calibrant_2_reference
  type: string
- doc: "The RT of the first calibrant in the input file. Please note that this value\
    \ needs to be set. The default value -1.0 is not allowed. (default: '-1')"
  id: calibra_nt_1_input
  inputBinding:
    prefix: -calibrant_1_input
  type: string
- doc: "The RT of the second calibrant in the input file. Please note that this value\
    \ needs to be set. The default value -1.0 is not allowed. (default: '-1')"
  id: calibra_nt_2_input
  inputBinding:
    prefix: -calibrant_2_input
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
