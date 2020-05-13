class: CommandLineTool
id: QCCalculator.cwl
inputs:
- id: in
  doc: "*                  Raw data input file (this is relevant if you want to look\
    \ at MS1, MS2 and precursor peak information) (valid formats: 'mzML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*                 Your qcML file. (valid formats: 'qcML')"
  type: File
  inputBinding:
    prefix: -out
- id: id
  doc: "Input idXML file containing the identifications. Your identifications will\
    \ be exported in an easy-to-read format (valid formats: 'idXML')"
  type: File
  inputBinding:
    prefix: -id
- id: feature
  doc: "Feature input file (this is relevant for most QC issues) (valid formats: 'featureXML')"
  type: File
  inputBinding:
    prefix: -feature
- id: consensus
  doc: "Consensus input file (this is only used for charge state deconvoluted output.\
    \ Use the consensusXML output form the DeCharger) (valid formats: 'consensusXML')"
  type: File
  inputBinding:
    prefix: -consensus
- id: remove_duplicate_features
  doc: This flag should be set, if you work with a set of merged features.
  type: boolean
  inputBinding:
    prefix: -remove_duplicate_features
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
- QCCalculator
