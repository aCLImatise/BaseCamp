class: CommandLineTool
id: OpenSwathConfidenceScoring.cwl
inputs:
- id: in
  doc: "*            Input file (OpenSwath results) (valid formats: 'featureXML')"
  type: File
  inputBinding:
    prefix: -in
- id: lib
  doc: "*           Assay library (valid formats: 'traML')"
  type: File
  inputBinding:
    prefix: -lib
- id: out
  doc: "*           Output file (results with confidence scores) (valid formats: 'featureXML')"
  type: File
  inputBinding:
    prefix: -out
- id: traf_o
  doc: "Retention time transformation (valid formats: 'trafoXML')"
  type: File
  inputBinding:
    prefix: -trafo
- id: decoys
  doc: "Number of decoy assays to select from the library for every true assay (0\
    \ for \"all\") (default: '1000' min: '0')"
  type: string
  inputBinding:
    prefix: -decoys
- id: transitions
  doc: "Number of transitions per feature to consider (highest intensities first;\
    \ 0 for \"all\") (default: '6' min: '0')"
  type: string
  inputBinding:
    prefix: -transitions
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
- OpenSwathConfidenceScoring
