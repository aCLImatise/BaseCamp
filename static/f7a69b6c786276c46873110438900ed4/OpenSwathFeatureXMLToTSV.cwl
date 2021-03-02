class: CommandLineTool
id: OpenSwathFeatureXMLToTSV.cwl
inputs:
- id: in_in
  doc: "*                     Input files separated by blank (valid formats: 'featureXML')"
  type: string?
  inputBinding:
    prefix: -in
- id: in_tr
  doc: "*                      TraML transition file (valid formats: 'traML')"
  type: File?
  inputBinding:
    prefix: -tr
- id: in_out
  doc: "*                     Tsv output file (mProphet compatible) (valid formats:\
    \ 'csv')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_short_format
  doc: Whether to write short (one peptide per line) or long format (one transition
    per line).
  type: boolean?
  inputBinding:
    prefix: -short_format
- id: in_best_scoring_peptide
  doc: If only the best scoring feature per peptide should be printed, give the variable
    name
  type: string?
  inputBinding:
    prefix: -best_scoring_peptide
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
  doc: "*                     Tsv output file (mProphet compatible) (valid formats:\
    \ 'csv')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- OpenSwathFeatureXMLToTSV
