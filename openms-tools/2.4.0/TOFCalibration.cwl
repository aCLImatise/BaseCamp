#!/usr/bin/env cwl-runner

baseCommand:
- TOFCalibration
class: CommandLineTool
cwlVersion: v1.0
id: tofcalibration
inputs:
- doc: "*              Input peak or raw data file  (valid formats: 'mzML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*             Output file  (valid formats: 'mzML')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "*  Input file containing the external calibrant spectra (peak or raw data)\
    \ (valid formats: 'mzML')"
  id: ext_calib_rants
  inputBinding:
    prefix: -ext_calibrants
  type: File
- doc: "*      Input file containing reference masses of the external calibrant spectra\
    \ (one per line) (valid formats: 'txt')"
  id: ref_masses
  inputBinding:
    prefix: -ref_masses
  type: File
- doc: "*       File containing TOF conversion constants. These can be either two\
    \ or three constants per set, depending on the conversion type. Either one set\
    \ for all calibrant spectra (tab separated), or one for each spectrum. For a detailed\
    \ description, please have a look at the doxygen documentation.(one set, tab separated,\
    \ per line) (valid formats: 'csv')"
  id: tof_const
  inputBinding:
    prefix: -tof_const
  type: File
- doc: Set this flag, if you have peak data, not raw data (the picking parameters
    are accessible only from the INI file).
  id: peak_data
  inputBinding:
    prefix: -peak_data
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
- doc: Algorithm section for peak picking
  id: algorithm
  inputBinding:
    prefix: '- algorithm'
  type: boolean
