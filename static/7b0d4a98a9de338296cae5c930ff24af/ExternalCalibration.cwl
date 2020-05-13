class: CommandLineTool
id: ExternalCalibration.cwl
inputs:
- id: in
  doc: "*        Input peak file (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*       Output file  (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -out
- id: offset
  doc: "Mass offset in ppm (default: '0.0')"
  type: boolean
  inputBinding:
    prefix: -offset
- id: slope
  doc: "Slope (dependent on m/z) (default: '0.0')"
  type: boolean
  inputBinding:
    prefix: -slope
- id: power
  doc: "Power (dependent on m/z) (default: '0.0')"
  type: boolean
  inputBinding:
    prefix: -power
- id: ms_level
  doc: "j ...  Target MS levels to apply the transformation onto. Scans with other\
    \ levels remain unchanged. (default: '[1 2 3]')"
  type: string
  inputBinding:
    prefix: -ms_level
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
outputs: []
cwlVersion: v1.1
baseCommand:
- ExternalCalibration
