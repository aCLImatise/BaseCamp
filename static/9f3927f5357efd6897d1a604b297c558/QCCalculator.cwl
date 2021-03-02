class: CommandLineTool
id: QCCalculator.cwl
inputs:
- id: in_in
  doc: "*                  Raw data input file (this is relevant if you want to look\
    \ at MS1, MS2 and precursor peak information) (valid formats: 'mzML')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*                 Your qcML file. (valid formats: 'qcML')"
  type: File?
  inputBinding:
    prefix: -out
- id: in_id
  doc: "Input idXML file containing the identifications. Your identifications will\
    \ be exported in an easy-to-read format (valid formats: 'idXML')"
  type: File?
  inputBinding:
    prefix: -id
- id: in_feature
  doc: "Feature input file (this is relevant for most QC issues) (valid formats: 'featureXML')"
  type: File?
  inputBinding:
    prefix: -feature
- id: in_consensus
  doc: "Consensus input file (this is only used for charge state deconvoluted output.\
    \ Use the consensusXML output form the DeCharger) (valid formats: 'consensusXML')"
  type: File?
  inputBinding:
    prefix: -consensus
- id: in_remove_duplicate_features
  doc: This flag should be set, if you work with a set of merged features.
  type: boolean?
  inputBinding:
    prefix: -remove_duplicate_features
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/openms:2.6.0--h4afb90d_0
cwlVersion: v1.1
baseCommand:
- QCCalculator
