class: CommandLineTool
id: bufet.py.cwl
inputs:
- id: in_mirna
  doc: ': path to the miRNA group file'
  type: File?
  inputBinding:
    prefix: -miRNA
- id: in_interactions
  doc: '>: path to the interactions file'
  type: File?
  inputBinding:
    prefix: -interactions
- id: in_ontology
  doc: ': path to the ontology file'
  type: File?
  inputBinding:
    prefix: -ontology
- id: in_synonyms
  doc: ': path to the synonyms file'
  type: File?
  inputBinding:
    prefix: -synonyms
- id: in_iterations
  doc: ': number of random permutations'
  type: boolean?
  inputBinding:
    prefix: -iterations
- id: in_output
  doc: ': path to the output file (overwritten if it exists)'
  type: File?
  inputBinding:
    prefix: -output
- id: in_processors
  doc: ': number of threads to use for calculations'
  type: boolean?
  inputBinding:
    prefix: -processors
- id: in_species
  doc: ': "human" or "mouse"'
  type: boolean?
  inputBinding:
    prefix: -species
- id: in_mi_free
  doc: ': miRanda free energy (valid only if the --miRanda flag is invoked)'
  type: boolean?
  inputBinding:
    prefix: -miFree
- id: in_mi_score
  doc: ': miRanda free energy (valid only if the --miRanda flag is invoked)'
  type: boolean?
  inputBinding:
    prefix: -miScore
- id: in_miranda
  doc: ': use interactions file from miRanda run'
  type: boolean?
  inputBinding:
    prefix: --miRanda
- id: in_ens_go
  doc: ': use ontology file downloaded from Ensembl'
  type: boolean?
  inputBinding:
    prefix: --ensGO
- id: in_disable_file_check
  doc: ': (quicker but not recommended) disable all file validations.'
  type: boolean?
  inputBinding:
    prefix: --disable-file-check
- id: in_disable_interactions_check
  doc: ': (quicker but not recommended) disable existence and file format validation
    for the interactions file.'
  type: boolean?
  inputBinding:
    prefix: --disable-interactions-check
- id: in_disable_ontology_check
  doc: ': (quicker but not recommended) disable existence and file format validation
    for the ontology file.'
  type: boolean?
  inputBinding:
    prefix: --disable-ontology-check
- id: in_disable_synonyms_check
  doc: ': (quicker but not recommended) disable existence and file format validation
    for the synonyms file.'
  type: boolean?
  inputBinding:
    prefix: --disable-synonyms-check
- id: in_python
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: ': path to the output file (overwritten if it exists)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- bufet.py
