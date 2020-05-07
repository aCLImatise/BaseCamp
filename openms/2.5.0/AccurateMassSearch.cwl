class: CommandLineTool
id: AccurateMassSearch.cwl
inputs:
- id: in
  doc: "*                FeatureXML or consensusXML file (valid formats: 'featureXML',\
    \ 'consensusXML')"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "*               MzTab file (valid formats: 'mzTab')"
  type: File
  inputBinding:
    prefix: -out
- id: out_annotation
  doc: "A copy of the input file, annotated with matching hits from the database.\
    \ (valid formats: 'featureXML', 'consensusXML')"
  type: File
  inputBinding:
    prefix: -out_annotation
- id: db
  doc: ":mapping <file(s)>*     Database input file(s), containing three tab-separated\
    \ columns of mass, formula, identifier. If 'mass' is 0, it is re-computed from\
    \ the molecular sum formula. By default CHEMISTRY/H MDBMappingFile.tsv in OpenMS/share\
    \ is used! If empty, the default will be used. (valid formats: 'tsv')"
  type: boolean
  inputBinding:
    prefix: -db
- id: db
  doc: ":struct <file(s)>*      Database input file(s), containing four tab-separated\
    \ columns of identifier, name, SMILES, INCHI.The identifier should match with\
    \ mapping file. SMILES and INCHI are reported in the  output, but not used otherwise.\
    \ By default CHEMISTRY/HMDB2StructMapping.tsv in OpenMS/share is used! If empty,\
    \ the default will be used. (valid formats: 'tsv')"
  type: boolean
  inputBinding:
    prefix: -db
- id: positive_adducts
  doc: "*  This file contains the list of potential positive adducts that will be\
    \ looked for in the database. Edit the list if you wish to exclude/include adducts.\
    \ By default CHEMISTRY/Positiv eAdducts.tsv in OpenMS/share is used. (valid formats:\
    \ 'tsv')"
  type: File
  inputBinding:
    prefix: -positive_adducts
- id: negative_adducts
  doc: "*  This file contains the list of potential negative adducts that will be\
    \ looked for in the database. Edit the list if you wish to exclude/include adducts.\
    \ By default CHEMISTRY/Negativ eAdducts.tsv in OpenMS/share is used. (valid formats:\
    \ 'tsv')"
  type: File
  inputBinding:
    prefix: -negative_adducts
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
  doc: ://www.openms.de/documentation/UTILS_AccurateMassSearch.html
  type: boolean
  inputBinding:
    prefix: '- http'
outputs: []
cwlVersion: v1.1
baseCommand:
- AccurateMassSearch
