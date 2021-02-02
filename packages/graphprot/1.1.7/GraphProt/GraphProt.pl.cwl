class: CommandLineTool
id: GraphProt.pl.cwl
inputs:
- id: in_mode
  doc: "'regression' or 'classification'\ndefault: classification"
  type: boolean
  inputBinding:
    prefix: -mode
- id: in_action
  doc: "what should GraphProt do?\nls: optimize parameters\ncv: run a crossvalidation\n\
    train: train a model\npredict: predict binding for a whole site\npredict_profile:\
    \ predict binding profiles\npredict_has: predict high-affinity sites\nmotif: create\
    \ sequence and structure motifs given a model"
  type: boolean
  inputBinding:
    prefix: -action
- id: in_only_seq
  doc: use GraphProt sequence models
  type: boolean
  inputBinding:
    prefix: -onlyseq
- id: in_prefix
  doc: "this prefix is used for all results\ndefault: GraphProt"
  type: boolean
  inputBinding:
    prefix: -prefix
- id: in_model
  doc: GraphProt model
  type: boolean
  inputBinding:
    prefix: -model
- id: in_fast_a
  doc: fasta file containing binding sites
  type: boolean
  inputBinding:
    prefix: -fasta
- id: in_man
  doc: full documentation
  type: boolean
  inputBinding:
    prefix: -man
- id: in_params
  doc: "parameter config file created by -action ls, alternatively\nuse the following\
    \ options to manually enter the desired\nparameters"
  type: boolean
  inputBinding:
    prefix: -params
- id: in_abstraction
  doc: "abstraction level [RNA structure graphs]\ndefault: 3"
  type: long
  inputBinding:
    prefix: -abstraction
- id: in_graphprot_radiusdefault
  doc: "GraphProt radius\ndefault: 1"
  type: boolean
  inputBinding:
    prefix: -R
- id: in_graphprot_distancedefault
  doc: "GraphProt distance\ndefault: 4"
  type: boolean
  inputBinding:
    prefix: -D
- id: in_bit_size
  doc: "GraphProt bitsize used for feature encoding\ndefault: 14"
  type: boolean
  inputBinding:
    prefix: -bitsize
- id: in_neg_fast_a
  doc: fasta file containing negative class sequences
  type: boolean
  inputBinding:
    prefix: -negfasta
- id: in_lambda
  doc: "SGD parameter lambda  [classification]\ndefault: 10e-4"
  type: boolean
  inputBinding:
    prefix: -lambda
- id: in_epochs
  doc: "SGD parameter epochs  [classification]\ndefault: 10"
  type: boolean
  inputBinding:
    prefix: -epochs
- id: in_affinities
  doc: "list of affinities\none value per line, same order as binding sites (fasta)"
  type: boolean
  inputBinding:
    prefix: -affinities
- id: in_svr_parameter_c
  doc: "SVR parameter c       [regression]\ndefault: 1"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_epsilon
  doc: "SVR parameter epsilon [regression]\ndefault: 0.1"
  type: boolean
  inputBinding:
    prefix: -epsilon
- id: in_percentile
  doc: "keep only regions with average score above a percentile\nas high-affinity\
    \ sites\ndefault: 99"
  type: boolean
  inputBinding:
    prefix: -percentile
- id: in_motif_len
  doc: "set length of motifs\n(default: 12)"
  type: boolean
  inputBinding:
    prefix: -motif_len
- id: in_motif_top_n
  doc: "use n top-scoring subsequences for motif creation\n(default: 1000)\n"
  type: long
  inputBinding:
    prefix: -motif_top_n
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- GraphProt.pl
