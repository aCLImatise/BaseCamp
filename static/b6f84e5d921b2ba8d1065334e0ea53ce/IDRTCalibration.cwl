class: CommandLineTool
id: IDRTCalibration.cwl
inputs:
- id: in_in
  doc: "*                  Input file  (valid formats: 'idXML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*                 Output file  (valid formats: 'idXML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_calibra_nt_one_reference
  doc: "The RT of the first calibrant in the reference file. (default: '0.1')"
  type: long?
  inputBinding:
    prefix: -calibrant_1_reference
- id: in_calibra_nt_two_reference
  doc: "The RT of the second calibrant in the reference file. (default: '0.9')"
  type: long?
  inputBinding:
    prefix: -calibrant_2_reference
- id: in_calibra_nt_one_input
  doc: "The RT of the first calibrant in the input file. Please note that this value\
    \ needs to be set. The default value -1.0 is not allowed. (default: '-1.0')"
  type: long?
  inputBinding:
    prefix: -calibrant_1_input
- id: in_calibra_nt_two_input
  doc: "The RT of the second calibrant in the input file. Please note that this value\
    \ needs to be set. The default value -1.0 is not allowed. (default: '-1.0')"
  type: long?
  inputBinding:
    prefix: -calibrant_2_input
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
  doc: "*                 Output file  (valid formats: 'idXML')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- IDRTCalibration
