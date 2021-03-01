class: CommandLineTool
id: ExternalCalibration.cwl
inputs:
- id: in_in
  doc: "*        Input peak file (valid formats: 'mzML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*       Output file  (valid formats: 'mzML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_offset
  doc: "Mass offset in ppm (default: '0')"
  type: boolean?
  inputBinding:
    prefix: -offset
- id: in_slope
  doc: "Slope (dependent on m/z) (default: '0')"
  type: boolean?
  inputBinding:
    prefix: -slope
- id: in_power
  doc: "Power (dependent on m/z) (default: '0')"
  type: boolean?
  inputBinding:
    prefix: -power
- id: in_ms_level
  doc: "MS levels to apply the transformation onto. Scans with other levels remain\
    \ unchanged. (default: '[1 2 3]')"
  type: string[]
  inputBinding:
    prefix: -ms_level
- id: in_ini
  doc: Use the given TOPP INI file
  type: File?
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long?
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File?
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean?
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "*       Output file  (valid formats: 'mzML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- ExternalCalibration
