class: CommandLineTool
id: MascotAdapterOnline.cwl
inputs:
- id: in
  doc: "*        Input file in mzML format. (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*       Output file in idXML format. (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -out
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
- id: mascot_parameters
  doc: Mascot parameters used for searching
  type: boolean
  inputBinding:
    prefix: '- Mascot_parameters'
- id: mascot_server
  doc: Mascot server details
  type: boolean
  inputBinding:
    prefix: '- Mascot_server'
outputs: []
cwlVersion: v1.1
baseCommand:
- MascotAdapterOnline
