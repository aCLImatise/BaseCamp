class: CommandLineTool
id: MetaboliteAdductDecharger.cwl
inputs:
- id: in
  doc: "*        Input file  (valid formats: 'featureXML')"
  type: File
  inputBinding:
    prefix: -in
- id: out_cm
  doc: "Output consensus map (valid formats: 'consensusXML')"
  type: File
  inputBinding:
    prefix: -out_cm
- id: out_fm
  doc: "Output feature map (valid formats: 'featureXML')"
  type: File
  inputBinding:
    prefix: -out_fm
- id: out_pairs
  doc: "Output file (valid formats: 'consensusXML')"
  type: File
  inputBinding:
    prefix: -outpairs
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
  doc: Feature decharging algorithm section
  type: boolean
  inputBinding:
    prefix: '- algorithm'
- id: http
  doc: ://www.openms.de/documentation/UTILS_MetaboliteAdductDecharger.html
  type: boolean
  inputBinding:
    prefix: '- http'
outputs: []
cwlVersion: v1.1
baseCommand:
- MetaboliteAdductDecharger
