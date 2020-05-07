class: CommandLineTool
id: MRMMapper.cwl
inputs:
- id: in
  doc: "*        Input file containing chromatograms (converted mzXML file) (valid\
    \ formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: tr
  doc: "*        Transition file (valid formats: 'TraML')"
  type: File
  inputBinding:
    prefix: -tr
- id: out
  doc: "*       Output file containing mapped chromatograms (valid formats: 'mzML')"
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
- id: algorithm
  doc: Algorithm parameters section
  type: boolean
  inputBinding:
    prefix: '- algorithm'
- id: http
  doc: ://www.openms.de/documentation/TOPP_MRMMapper.html
  type: boolean
  inputBinding:
    prefix: '- http'
outputs: []
cwlVersion: v1.1
baseCommand:
- MRMMapper
