class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gomo.cwl
inputs:
- id: name_directory_not
  doc: "name of the directory for output. Will not replace an existing directory;\
    \ default: 'gomo_out'"
  type: string
  inputBinding:
    prefix: --o
- id: oc
  doc: "name of the directory for output. Will replace an existing directory; default:\
    \ 'gomo_out'"
  type: string
  inputBinding:
    prefix: --oc
- id: text
  doc: "output tab separated values format to standard out and don't create output\
    \ directory or files; default: create HTML and XML in <output dir>;"
  type: boolean
  inputBinding:
    prefix: --text
- id: dag
  doc: 'path to the optional Gene Ontology DAG file to be used for highlighting the
    specific terms in the GOMo HTML output; default: no highlighting'
  type: string
  inputBinding:
    prefix: --dag
- id: motifs
  doc: 'path to the optional motif file in MEME format used to generate (all of the)
    scoring file(s); used for adding sequence logos to HTML output; default: no logos
    in output;'
  type: string
  inputBinding:
    prefix: --motifs
- id: motif
  doc: 'limit results to specified motif; option may  be repeated; default: use all
    motifs'
  type: string
  inputBinding:
    prefix: --motif
- id: shuffle_scores
  doc: 'generate empirical null by shuffling the sequence to score assignments and
    computing statistics <n> times; default: <n>=1000'
  type: string
  inputBinding:
    prefix: --shuffle_scores
- id: qvalue_threshold_considered
  doc: 'the q-value threshold considered significant; default: <q>=0.05, q >= 1.0
    shows all results'
  type: string
  inputBinding:
    prefix: --t
- id: score_e_thresh
  doc: 'the score E-value threshold above which the same rank is given to all sequences;  default:
    no threshold'
  type: string
  inputBinding:
    prefix: --score_E_thresh
- id: min_gene_count
  doc: 'only consider GO terms annotated with a at least <n> genes; default: <n> =
    1).'
  type: string
  inputBinding:
    prefix: --min_gene_count
- id: gs
  doc: 'extract gene scores rather than p-values from the CisML input file(s); default:
    use CisML p-values'
  type: boolean
  inputBinding:
    prefix: --gs
- id: seed
  doc: 'seed the random number generator; different values of <seed> will give slightly
    different outputs; default: <seed> is chosen randomly'
  type: string
  inputBinding:
    prefix: --seed
- id: no_status
  doc: don't print progress messages to stderr
  type: boolean
  inputBinding:
    prefix: --nostatus
- id: verbosity
  doc: '[1|2|3|4] control level of progress messages; 1 = Quiet, 2 = Normal, 3 = High,
    4 = Very High; default: 2'
  type: boolean
  inputBinding:
    prefix: --verbosity
- id: go_term_database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: scoring_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- gomo
