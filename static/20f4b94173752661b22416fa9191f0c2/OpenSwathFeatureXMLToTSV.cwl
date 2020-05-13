class: CommandLineTool
id: OpenSwathFeatureXMLToTSV.cwl
inputs:
- id: in
  doc: "*                     Input files separated by blank (valid formats: 'featureXML')"
  type: File
  inputBinding:
    prefix: -in
- id: tr
  doc: "*                      TraML transition file (valid formats: 'traML')"
  type: File
  inputBinding:
    prefix: -tr
- id: out
  doc: "*                     Tsv output file (mProphet compatible) (valid formats:\
    \ 'csv')"
  type: File
  inputBinding:
    prefix: -out
- id: short_format
  doc: Whether to write short (one peptide per line) or long format (one transition
    per line).
  type: boolean
  inputBinding:
    prefix: -short_format
- id: best_scoring_peptide
  doc: If only the best scoring feature per peptide should be printed, give the variable
    name
  type: string
  inputBinding:
    prefix: -best_scoring_peptide
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
- OpenSwathFeatureXMLToTSV
