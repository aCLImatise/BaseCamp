class: CommandLineTool
id: bufet.py.cwl
inputs:
- id: python
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: buf_et_py
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: mirna
  doc: ': path to the miRNA group file'
  type: File
  inputBinding:
    prefix: -miRNA
- id: interactions
  doc: '>: path to the interactions file'
  type: File
  inputBinding:
    prefix: -interactions
- id: ontology
  doc: ': path to the ontology file'
  type: File
  inputBinding:
    prefix: -ontology
- id: synonyms
  doc: ': path to the synonyms file'
  type: File
  inputBinding:
    prefix: -synonyms
- id: iterations
  doc: ': number of random permutations'
  type: boolean
  inputBinding:
    prefix: -iterations
- id: output
  doc: ': path to the output file (overwritten if it exists)'
  type: File
  inputBinding:
    prefix: -output
- id: processors
  doc: ': number of threads to use for calculations'
  type: boolean
  inputBinding:
    prefix: -processors
- id: species
  doc: ': "human" or "mouse"'
  type: boolean
  inputBinding:
    prefix: -species
- id: mi_free
  doc: ': miRanda free energy (valid only if the --miRanda flag is invoked)'
  type: boolean
  inputBinding:
    prefix: -miFree
- id: mi_score
  doc: ': miRanda free energy (valid only if the --miRanda flag is invoked)'
  type: boolean
  inputBinding:
    prefix: -miScore
- id: miranda
  doc: ': use interactions file from miRanda run'
  type: boolean
  inputBinding:
    prefix: --miRanda
- id: ens_go
  doc: ': use ontology file downloaded from Ensembl'
  type: boolean
  inputBinding:
    prefix: --ensGO
- id: disable_file_check
  doc: ': (quicker but not recommended) disable all file validations.'
  type: boolean
  inputBinding:
    prefix: --disable-file-check
- id: disable_interactions_check
  doc: ': (quicker but not recommended) disable existence and file format validation
    for the interactions file.'
  type: boolean
  inputBinding:
    prefix: --disable-interactions-check
- id: disable_ontology_check
  doc: ': (quicker but not recommended) disable existence and file format validation
    for the ontology file.'
  type: boolean
  inputBinding:
    prefix: --disable-ontology-check
- id: disable_synonyms_check
  doc: ': (quicker but not recommended) disable existence and file format validation
    for the synonyms file.'
  type: boolean
  inputBinding:
    prefix: --disable-synonyms-check
outputs: []
cwlVersion: v1.1
baseCommand:
- bufet.py
