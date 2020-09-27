class: CommandLineTool
id: AccurateMassSearch.cwl
inputs:
- id: in_in
  doc: "*                FeatureXML or consensusXML file (valid formats: 'featureXML',\
    \ 'consensusXML')"
  type: File
  inputBinding:
    prefix: -in
- id: in_out
  doc: "*               MzTab file (valid formats: 'mzTab')"
  type: File
  inputBinding:
    prefix: -out
- id: in_out_annotation
  doc: "A copy of the input file, annotated with matching hits from the database.\
    \ (valid formats: 'featureXML', 'consensusXML')"
  type: File
  inputBinding:
    prefix: -out_annotation
- id: in_positive_adducts
  doc: "*  This file contains the list of potential positive adducts that will be\
    \ looked for in the database. Edit the list if you wish to exclude/include adducts.\
    \ By default CHEMISTRY/PositiveAdducts.tsv in OpenMS/share is used. (valid formats:\
    \ 'tsv')"
  type: File
  inputBinding:
    prefix: -positive_adducts
- id: in_negative_adducts
  doc: "*  This file contains the list of potential negative adducts that will be\
    \ looked for in the database. Edit the list if you wish to exclude/include adducts.\
    \ By default CHEMISTRY/NegativeAdducts.tsv in OpenMS/share is used. (valid formats:\
    \ 'tsv')"
  type: File
  inputBinding:
    prefix: -negative_adducts
- id: in_ini
  doc: Use the given TOPP INI file
  type: File
  inputBinding:
    prefix: -ini
- id: in_threads
  doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  type: long
  inputBinding:
    prefix: -threads
- id: in_write_ini
  doc: Writes the default configuration file
  type: File
  inputBinding:
    prefix: -write_ini
- id: in_helphelp
  doc: Shows all options (including advanced)
  type: boolean
  inputBinding:
    prefix: --helphelp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- AccurateMassSearch
