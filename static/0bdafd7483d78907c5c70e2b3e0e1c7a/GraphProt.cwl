class: CommandLineTool
id: GraphProt.pl.cwl
inputs:
- id: mode
  doc: "'regression' or 'classification' default: classification"
  type: boolean
  inputBinding:
    prefix: -mode
- id: action
  doc: 'what should GraphProt do? ls: optimize parameters cv: run a crossvalidation
    train: train a model predict: predict binding for a whole site predict_profile:
    predict binding profiles predict_has: predict high-affinity sites motif: create
    sequence and structure motifs given a model'
  type: boolean
  inputBinding:
    prefix: -action
- id: only_seq
  doc: use GraphProt sequence models
  type: boolean
  inputBinding:
    prefix: -onlyseq
- id: prefix
  doc: 'this prefix is used for all results default: GraphProt'
  type: boolean
  inputBinding:
    prefix: -prefix
- id: model
  doc: GraphProt model
  type: boolean
  inputBinding:
    prefix: -model
- id: fast_a
  doc: fasta file containing binding sites
  type: boolean
  inputBinding:
    prefix: -fasta
- id: man
  doc: full documentation
  type: boolean
  inputBinding:
    prefix: -man
- id: params
  doc: parameter config file created by -action ls, alternatively use the following
    options to manually enter the desired parameters
  type: boolean
  inputBinding:
    prefix: -params
- id: r
  doc: 'GraphProt radius default: 1'
  type: boolean
  inputBinding:
    prefix: -R
- id: d
  doc: 'GraphProt distance default: 4'
  type: boolean
  inputBinding:
    prefix: -D
- id: bit_size
  doc: 'GraphProt bitsize used for feature encoding default: 14'
  type: boolean
  inputBinding:
    prefix: -bitsize
- id: neg_fast_a
  doc: fasta file containing negative class sequences
  type: boolean
  inputBinding:
    prefix: -negfasta
- id: lambda
  doc: 'SGD parameter lambda  [classification] default: 10e-4'
  type: boolean
  inputBinding:
    prefix: -lambda
- id: epochs
  doc: 'SGD parameter epochs  [classification] default: 10'
  type: boolean
  inputBinding:
    prefix: -epochs
- id: affinities
  doc: list of affinities one value per line, same order as binding sites (fasta)
  type: boolean
  inputBinding:
    prefix: -affinities
- id: c
  doc: 'SVR parameter c       [regression] default: 1'
  type: boolean
  inputBinding:
    prefix: -c
- id: epsilon
  doc: 'SVR parameter epsilon [regression] default: 0.1'
  type: boolean
  inputBinding:
    prefix: -epsilon
- id: percentile
  doc: 'keep only regions with average score above a percentile as high-affinity sites
    default: 99'
  type: boolean
  inputBinding:
    prefix: -percentile
- id: motif_len
  doc: 'set length of motifs (default: 12)'
  type: boolean
  inputBinding:
    prefix: -motif_len
- id: motif_top_n
  doc: 'use n top-scoring subsequences for motif creation (default: 1000)'
  type: string
  inputBinding:
    prefix: -motif_top_n
outputs: []
cwlVersion: v1.1
baseCommand:
- GraphProt.pl
