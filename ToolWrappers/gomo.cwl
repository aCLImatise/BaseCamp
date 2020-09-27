class: CommandLineTool
id: gomo.cwl
inputs:
- id: in_name_directory_not
  doc: "name of the directory for output. Will not replace\nan existing directory;\
    \ default: 'gomo_out'"
  type: Directory
  inputBinding:
    prefix: --o
- id: in_oc
  doc: "name of the directory for output. Will replace an\nexisting directory; default:\
    \ 'gomo_out'"
  type: Directory
  inputBinding:
    prefix: --oc
- id: in_text
  doc: "output tab separated values format to standard out\nand don't create output\
    \ directory or files;\ndefault: create HTML and XML in <output dir>;"
  type: Directory
  inputBinding:
    prefix: --text
- id: in_dag
  doc: "path to the optional Gene Ontology DAG file to be\nused for highlighting the\
    \ specific terms in the\nGOMo HTML output; default: no highlighting"
  type: File
  inputBinding:
    prefix: --dag
- id: in_motifs
  doc: "path to the optional motif file in MEME format\nused to generate (all of the)\
    \ scoring file(s);\nused for adding sequence logos to HTML output;\ndefault: no\
    \ logos in output;"
  type: File
  inputBinding:
    prefix: --motifs
- id: in_motif
  doc: "limit results to specified motif; option may\nbe repeated; default: use all\
    \ motifs"
  type: string
  inputBinding:
    prefix: --motif
- id: in_shuffle_scores
  doc: "generate empirical null by shuffling the sequence\nto score assignments and\
    \ computing statistics <n>\ntimes; default: <n>=1000"
  type: long
  inputBinding:
    prefix: --shuffle_scores
- id: in_qvalue_threshold_considered
  doc: "the q-value threshold considered significant;\ndefault: <q>=0.05, q >= 1.0\
    \ shows all results"
  type: double
  inputBinding:
    prefix: --t
- id: in_score_e_thresh
  doc: "the score E-value threshold above which the same\nrank is given to all sequences;\n\
    default: no threshold"
  type: string
  inputBinding:
    prefix: --score_E_thresh
- id: in_min_gene_count
  doc: "only consider GO terms annotated with a at least\n<n> genes; default: <n>\
    \ = 1)."
  type: long
  inputBinding:
    prefix: --min_gene_count
- id: in_gs
  doc: "extract gene scores rather than p-values from the\nCisML input file(s); default:\
    \ use CisML p-values"
  type: boolean
  inputBinding:
    prefix: --gs
- id: in_seed
  doc: "seed the random number generator; different\nvalues of <seed> will give slightly\
    \ different\noutputs; default: <seed> is chosen randomly"
  type: long
  inputBinding:
    prefix: --seed
- id: in_no_status
  doc: don't print progress messages to stderr
  type: boolean
  inputBinding:
    prefix: --nostatus
- id: in_verbosity
  doc: "[1|2|3|4] control level of progress messages;\n1 = Quiet, 2 = Normal, 3 =\
    \ High, 4 = Very High;\ndefault: 2"
  type: boolean
  inputBinding:
    prefix: --verbosity
- id: in_go_term_database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_scoring_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_directory_not
  doc: "name of the directory for output. Will not replace\nan existing directory;\
    \ default: 'gomo_out'"
  type: Directory
  outputBinding:
    glob: $(inputs.in_name_directory_not)
- id: out_oc
  doc: "name of the directory for output. Will replace an\nexisting directory; default:\
    \ 'gomo_out'"
  type: Directory
  outputBinding:
    glob: $(inputs.in_oc)
- id: out_text
  doc: "output tab separated values format to standard out\nand don't create output\
    \ directory or files;\ndefault: create HTML and XML in <output dir>;"
  type: Directory
  outputBinding:
    glob: $(inputs.in_text)
- id: out_dag
  doc: "path to the optional Gene Ontology DAG file to be\nused for highlighting the\
    \ specific terms in the\nGOMo HTML output; default: no highlighting"
  type: File
  outputBinding:
    glob: $(inputs.in_dag)
- id: out_motifs
  doc: "path to the optional motif file in MEME format\nused to generate (all of the)\
    \ scoring file(s);\nused for adding sequence logos to HTML output;\ndefault: no\
    \ logos in output;"
  type: File
  outputBinding:
    glob: $(inputs.in_motifs)
cwlVersion: v1.1
baseCommand:
- gomo
