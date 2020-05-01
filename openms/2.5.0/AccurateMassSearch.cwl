#!/usr/bin/env cwl-runner

baseCommand:
- AccurateMassSearch
class: CommandLineTool
cwlVersion: v1.0
id: accuratemasssearch
inputs:
- doc: "*                FeatureXML or consensusXML file (valid formats: 'featureXML',\
    \ 'consensusXML')"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "*               MzTab file (valid formats: 'mzTab')"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "A copy of the input file, annotated with matching hits from the database.\
    \ (valid formats: 'featureXML', 'consensusXML')"
  id: out_annotation
  inputBinding:
    prefix: -out_annotation
  type: File
- doc: ":mapping <file(s)>*     Database input file(s), containing three tab-separated\
    \ columns of mass, formula, identifier. If 'mass' is 0, it is re-computed from\
    \ the molecular sum formula. By default CHEMISTRY/H MDBMappingFile.tsv in OpenMS/share\
    \ is used! If empty, the default will be used. (valid formats: 'tsv')"
  id: db
  inputBinding:
    prefix: -db
  type: boolean
- doc: ":struct <file(s)>*      Database input file(s), containing four tab-separated\
    \ columns of identifier, name, SMILES, INCHI.The identifier should match with\
    \ mapping file. SMILES and INCHI are reported in the  output, but not used otherwise.\
    \ By default CHEMISTRY/HMDB2StructMapping.tsv in OpenMS/share is used! If empty,\
    \ the default will be used. (valid formats: 'tsv')"
  id: db
  inputBinding:
    prefix: -db
  type: boolean
- doc: "*  This file contains the list of potential positive adducts that will be\
    \ looked for in the database. Edit the list if you wish to exclude/include adducts.\
    \ By default CHEMISTRY/Positiv eAdducts.tsv in OpenMS/share is used. (valid formats:\
    \ 'tsv')"
  id: positive_adducts
  inputBinding:
    prefix: -positive_adducts
  type: File
- doc: "*  This file contains the list of potential negative adducts that will be\
    \ looked for in the database. Edit the list if you wish to exclude/include adducts.\
    \ By default CHEMISTRY/Negativ eAdducts.tsv in OpenMS/share is used. (valid formats:\
    \ 'tsv')"
  id: negative_adducts
  inputBinding:
    prefix: -negative_adducts
  type: File
- doc: Use the given TOPP INI file
  id: ini
  inputBinding:
    prefix: -ini
  type: File
- doc: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
  id: threads
  inputBinding:
    prefix: -threads
  type: string
- doc: Writes the default configuration file
  id: write_ini
  inputBinding:
    prefix: -write_ini
  type: File
- doc: Shows all options (including advanced)
  id: helphelp
  inputBinding:
    prefix: --helphelp
  type: boolean
- doc: Algorithm parameters section
  id: algorithm
  inputBinding:
    prefix: '- algorithm'
  type: boolean
- doc: ://www.openms.de/documentation/UTILS_AccurateMassSearch.html
  id: http
  inputBinding:
    prefix: '- http'
  type: boolean
