#!/usr/bin/env cwl-runner

baseCommand:
- ExternalCalibration
class: CommandLineTool
cwlVersion: v1.0
id: externalcalibration
inputs:
- doc: "*        Input peak file (valid formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*       Output file  (valid formats: 'mzML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Mass offset in ppm (default: '0')"
  id: offset
  inputBinding:
    prefix: -offset
  type: boolean
- doc: "Slope (dependent on m/z) (default: '0')"
  id: slope
  inputBinding:
    prefix: -slope
  type: boolean
- doc: "Power (dependent on m/z) (default: '0')"
  id: power
  inputBinding:
    prefix: -power
  type: boolean
- doc: "j ...  Target MS levels to apply the transformation onto. Scans with other\
    \ levels remain unchanged. (default: '[1 2 3]')"
  id: ms_level
  inputBinding:
    prefix: -ms_level
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
