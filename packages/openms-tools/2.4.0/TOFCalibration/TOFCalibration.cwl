class: CommandLineTool
id: TOFCalibration.cwl
inputs:
- id: in_in
  doc: "*              Input peak or raw data file  (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*             Output file  (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -out
- id: in_ext_calib_rants
  doc: "*  Input file containing the external calibrant spectra (peak or raw data)\n\
    (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -ext_calibrants
- id: in_ref_masses
  doc: "*      Input file containing reference masses of the external calibrant spectra\
    \ (one per line) (valid formats: 'txt')"
  type: File
  inputBinding:
    prefix: -ref_masses
- id: in_tof_const
  doc: "*       File containing TOF conversion constants. These can be either two\
    \ or three constants\nper set, depending on the conversion type. Either one set\
    \ for all calibrant spectra\n(tab separated), or one for each spectrum.\nFor a\
    \ detailed description, please have a look at the doxygen documentation.(one set,\
    \ tab separated, per line) (valid formats: 'csv')"
  type: File
  inputBinding:
    prefix: -tof_const
- id: in_peak_data
  doc: Set this flag, if you have peak data, not raw data (the picking parameters
    are accessible only from the INI file).
  type: boolean
  inputBinding:
    prefix: -peak_data
- id: in_ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "*             Output file  (valid formats: 'mzML')"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- TOFCalibration
