class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/IDRTCalibration.cwl
inputs:
- id: in
  doc: "*                  Input file  (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*                 Output file  (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
- id: calibra_nt_one_reference
  doc: "The RT of the first calibrant in the reference file. (default: '0.1')"
  type: string
  inputBinding:
    prefix: -calibrant_1_reference
- id: calibra_nt_two_reference
  doc: "The RT of the second calibrant in the reference file. (default: '0.9')"
  type: string
  inputBinding:
    prefix: -calibrant_2_reference
- id: calibra_nt_one_input
  doc: "The RT of the first calibrant in the input file. Please note that this value\
    \ needs to be set. The default value -1.0 is not allowed. (default: '-1.0')"
  type: string
  inputBinding:
    prefix: -calibrant_1_input
- id: calibra_nt_two_input
  doc: "The RT of the second calibrant in the input file. Please note that this value\
    \ needs to be set. The default value -1.0 is not allowed. (default: '-1.0')"
  type: string
  inputBinding:
    prefix: -calibrant_2_input
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
- IDRTCalibration
