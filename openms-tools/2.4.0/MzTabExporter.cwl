class: CommandLineTool
id: MzTabExporter.cwl
inputs:
- id: in
  doc: "Input files used to generate the mzTab file. (valid formats: 'featureXML',\
    \ 'consensusXML', 'idXML', 'mzid')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*       Output file (mzTab) (valid formats: 'mzTab')"
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
outputs: []
cwlVersion: v1.1
baseCommand:
- MzTabExporter
