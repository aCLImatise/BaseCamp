class: CommandLineTool
id: TOFCalibration.cwl
inputs:
- id: in
  doc: "*              Input peak or raw data file  (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*             Output file  (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -out
- id: ext_calib_rants
  doc: "*  Input file containing the external calibrant spectra (peak or raw data)\
    \ (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -ext_calibrants
- id: ref_masses
  doc: "*      Input file containing reference masses of the external calibrant spectra\
    \ (one per line) (valid formats: 'txt')"
  type: File
  inputBinding:
    prefix: -ref_masses
- id: tof_const
  doc: "*       File containing TOF conversion constants. These can be either two\
    \ or three constants per set, depending on the conversion type. Either one set\
    \ for all calibrant spectra (tab separated), or one for each spectrum. For a detailed\
    \ description, please have a look at the doxygen documentation.(one set, tab separated,\
    \ per line) (valid formats: 'csv')"
  type: File
  inputBinding:
    prefix: -tof_const
- id: peak_data
  doc: Set this flag, if you have peak data, not raw data (the picking parameters
    are accessible only from the INI file).
  type: boolean
  inputBinding:
    prefix: -peak_data
- id: ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: string
  inputBinding:
    prefix: -threads
- id: write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
- id: algorithm
  doc: Algorithm section for peak picking
  type: boolean
  inputBinding:
    prefix: '- algorithm'
- id: http
  doc: ://www.openms.de/documentation/TOPP_TOFCalibration.html
  type: boolean
  inputBinding:
    prefix: '- http'
outputs: []
cwlVersion: v1.1
baseCommand:
- TOFCalibration
