class: CommandLineTool
id: fasta2shrep_gspan.pl.cwl
inputs:
- id: in_man
  doc: full documentation
  type: boolean?
  inputBinding:
    prefix: -man
- id: in_shift
  doc: "<INTEGER> e.g. 20\nThe shift of the window, relative to the window size given\
    \ in\npercent. So you give which percent of the window size shall be\nused for\
    \ the shift. Of course the shift is rounded down to the\nnearest whole number.\n\
    Example 20 % of a window 150 would result in a step size of 30 nt.\nIt is a relative\
    \ parameter, as you can give different window sizes.\nIf you do not give this\
    \ parameter there is a default shift of 1 nt."
  type: boolean?
  inputBinding:
    prefix: -shift
- id: in_cue
  doc: "Crop unpaired ends.\nIf you give this flag, then the unpaired ends of each\n\
    single structure are ignored. E.g. the structure\n...(((...))).. becomes just\
    \ (((...)))"
  type: boolean?
  inputBinding:
    prefix: -cue
- id: in_stack
  doc: "Adds stacking information to graphs. This adds an additional\nvertex (type\
    \ P) for each pair of stacked base-pairs and four edges\n(type p) from each of\
    \ the involved bases to the new vertex."
  type: boolean?
  inputBinding:
    prefix: -stack
- id: in_float_eg_energy
  doc: "<FLOAT> e.g. 5.0\nEnergy range in kcal/mol (RNAshapes)\nUse only one of -e\
    \ and -c!"
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_integer_eg_relative
  doc: "<INTEGER> e.g. 10\nRelative energy range, i.e. percentage (%) of MFE energy\
    \ (RNAshapes)\nUse only one of -e and -c!"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_integer_shape_type
  doc: "<INTEGER> [1-5] e.g. 3 OR \"3=0,4=100,5=200\"\nThe shape type (RNAshapes).\
    \ Default is 3.\nWith the list format, the shape level can be changed for different\
    \ window length\n\"4=100\" means that shape level 4 is used from length 100nt\
    \ (window length)\nThe first given length has to be 0! Not continuous given levels\
    \ are allowed!"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_integer_eg_number
  doc: "<INTEGER> e.g. 10\nMax number of shreps that should be taken per window."
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_ignore_unstable_structures
  doc: "Ignore unstable structures (RNAshapes).\nThis option filters out closed structures\
    \ with positive free energy."
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_calculate_structure_probabilities
  doc: Calculate structure probabilities for shreps (RNAshapes)
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_int_eg_turn
  doc: "<INT> e.g. 10\nTurn on structure sampling and gives number of sampling iterations.\n\
    Default no sampling (i=0)"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_sample_len
  doc: "<INT> e.g. 100\nOnly in sampling mode: Sampling is only used for seqs/windows\
    \ >= given length,\nDefault: sample all lengths (0), if -i > 0"
  type: boolean?
  inputBinding:
    prefix: -sample-len
- id: in_turn_shape_probabilities
  doc: Turn on shape probabilities for RNAshapes, no sampling mode allowed
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_tp
  doc: "<FLOAT> e.g 0.001\nFilter cutoff for shape probabilities, applied before -M\
    \ filter!"
  type: boolean?
  inputBinding:
    prefix: -Tp
- id: in_seq_graph_win
  doc: add for each window a graph which contains no structure
  type: boolean?
  inputBinding:
    prefix: -seq-graph-win
- id: in_seq_graph_t
  doc: "add for each 't #' a graph which contains no structure"
  type: boolean?
  inputBinding:
    prefix: -seq-graph-t
- id: in_seq_graph_alph
  doc: the alphabet of unstructured graphs
  type: string?
  inputBinding:
    prefix: -seq-graph-alph
- id: in_annotate
  doc: "<STRING> annotation.tab\nA file with annotations to be added as abstract graphs\n\
    on the sequence leven (if given) and on the structure\n(SHREP) level. The format\
    \ is has the following TAB-delimited\ncolumns: SEQID, START, END, NAMESPACE#LABEL.\n\
    Labels with the same name-space and SEQID form connected\ncomponents, which is\
    \ a sequence of label vertices ordered\nby the START position in the sequence."
  type: boolean?
  inputBinding:
    prefix: -annotate
- id: in_abstr
  doc: Add abstract structure graphs to the single shrep graph
  type: boolean?
  inputBinding:
    prefix: -abstr
- id: in_match_shape
  doc: "<SHAPE>\nall seqs/windows will be constraint folded into that shape via\n\
    RNAshapes (if structure is given in another way this struct will be kept),\nif\
    \ this shape is not possible within given energy range, produce a\nspecific t\
    \ graph with only one vertex 'X'. By this the instance\nbecomes very unsimilar\
    \ to all other graphs (for knn)"
  type: boolean?
  inputBinding:
    prefix: -match-shape
- id: in_vp
  doc: "enable graph computation with viewpoints:\nsvmsgdnspdk will center on those\
    \ nucleotides that are given\nvia capital letters and ignore those given as lowercase\
    \ letters"
  type: boolean?
  inputBinding:
    prefix: -vp
- id: in_tmp
  doc: "<STRING> e.g. \"/scratch/1/sita/tmp\"\nA directory for writing temporary files"
  type: boolean?
  inputBinding:
    prefix: -tmp
- id: in_string_eg_output_directory
  doc: "<STRING> e.g. \"ProjectX/MySequences/GSPAN/\"\nOutput directory for gspan\
    \ files containing graphs."
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_group
  doc: "<INTEGER> e.g. 5\nCombine/group that number of input seqs into 1 gspan file\n\
    output name is then '<INT>.group.gspan.bz2'"
  type: boolean?
  inputBinding:
    prefix: -group
- id: in_stdout
  doc: send graphs to stdout instead of writing to files
  type: boolean?
  inputBinding:
    prefix: -stdout
- id: in_ignore_header
  doc: don't write fasta id part after first space to gspan
  type: boolean?
  inputBinding:
    prefix: -ignore-header
- id: in_debug
  doc: additional debug output
  type: boolean?
  inputBinding:
    prefix: -debug
- id: in_help
  doc: -help   brief help message
  type: string
  inputBinding:
    position: 0
- id: in_compulsory
  doc: "-fasta  <STRING> e.g. \"sequence.fasta\"\nAll sequences in fasta format."
  type: string
  inputBinding:
    position: 1
- id: in_options
  doc: "-wins           [INTEGER] e.g. \"50,100,200\"\nA list of window sizes to use.\n\
    If none are given (empty string ''), then the entire sequence is\ntaken with no\
    \ windows. Each window > 1 required!"
  type: string
  inputBinding:
    position: 2
- id: in_instances_dot
  doc: -nostr                  Calculate no structures, only add sequence information,
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_string_eg_output_directory
  doc: "<STRING> e.g. \"ProjectX/MySequences/GSPAN/\"\nOutput directory for gspan\
    \ files containing graphs."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_string_eg_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- fasta2shrep_gspan.pl
