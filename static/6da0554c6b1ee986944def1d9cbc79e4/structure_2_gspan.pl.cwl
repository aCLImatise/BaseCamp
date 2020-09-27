class: CommandLineTool
id: structure_2_gspan.pl.cwl
inputs:
- id: in_man
  doc: full documentation
  type: boolean
  inputBinding:
    prefix: -man
- id: in_input_structure_type
  doc: 'Structure type from the input to use. Allowed types: "MFE", "MEA"'
  type: string
  inputBinding:
    prefix: -input-structure-type
- id: in_stack
  doc: "Adds stacking information to graphs. This adds an additional\nvertex (type\
    \ P) for each pair of stacked base-pairs and four edges\n(type p) from each of\
    \ the involved bases to the new vertex."
  type: boolean
  inputBinding:
    prefix: -stack
- id: in_seq_graph_win
  doc: add for each window a graph which contains no structure
  type: boolean
  inputBinding:
    prefix: -seq-graph-win
- id: in_seq_graph_t
  doc: "add for each 't #' a graph which contains no structure"
  type: boolean
  inputBinding:
    prefix: -seq-graph-t
- id: in_seq_graph_alph
  doc: the alphabet of unstructured graphs
  type: string
  inputBinding:
    prefix: -seq-graph-alph
- id: in_annotate
  doc: "<STRING> annotation.tab\nA file with annotations to be added as abstract graphs\n\
    on the sequence leven (if given) and on the structure\n(SHREP) level. The format\
    \ is has the following TAB-delimited\ncolumns: SEQID, START, END, NAMESPACE#LABEL.\n\
    Labels with the same name-space and SEQID form connected\ncomponents, which is\
    \ a sequence of label vertices ordered\nby the START position in the sequence."
  type: boolean
  inputBinding:
    prefix: -annotate
- id: in_abstr
  doc: Add abstract structure graphs to the single shrep graph
  type: boolean
  inputBinding:
    prefix: -abstr
- id: in_match_shape
  doc: "<SHAPE>\nall seqs/windows will be constraint folded into that shape via\n\
    RNAshapes (if structure is given in another way this struct will be kept),\nif\
    \ this shape is not possible within given energy range, produce a\nspecific t\
    \ graph with only one vertex 'X'. By this the instance\nbecomes very unsimilar\
    \ to all other graphs (for knn)"
  type: boolean
  inputBinding:
    prefix: -match-shape
- id: in_vp
  doc: "enable graph computation with viewpoints:\nsvmsgdnspdk will center on those\
    \ nucleotides that are given\nvia capital letters and ignore those given as lowercase\
    \ letters"
  type: boolean
  inputBinding:
    prefix: -vp
- id: in_tmp
  doc: "<STRING> e.g. \"/scratch/1/sita/tmp\"\nA directory for writing temporary files"
  type: boolean
  inputBinding:
    prefix: -tmp
- id: in_string_eg_output
  doc: "<STRING> e.g. \"ProjectX/MySequences/GSPAN/\"\nOutput directory for gspan\
    \ files containing graphs."
  type: Directory
  inputBinding:
    prefix: -o
- id: in_group
  doc: "<INTEGER> e.g. 5\nCombine/group that number of input seqs into 1 gspan file\n\
    output name is then '<INT>.group.gspan.bz2'"
  type: boolean
  inputBinding:
    prefix: -group
- id: in_stdout
  doc: send graphs to stdout instead of writing to files
  type: boolean
  inputBinding:
    prefix: -stdout
- id: in_ignore_header
  doc: don't write fasta id part after first space to gspan
  type: boolean
  inputBinding:
    prefix: -ignore-header
- id: in_debug
  doc: additional debug output
  type: boolean
  inputBinding:
    prefix: -debug
- id: in_help
  doc: -help   brief help message
  type: string
  inputBinding:
    position: 0
- id: in_compulsory
  doc: "-input-file     <STRING> e.g. \"sequence.fasta\"\nThe sequence and structure\
    \ data, the output of structure prediction tool."
  type: string
  inputBinding:
    position: 1
- id: in_options
  doc: '-input-format Sequence Structure format of the input. Allowed formats: "vrna-simple",
    "vrna-mea"'
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
- id: out_string_eg_output
  doc: "<STRING> e.g. \"ProjectX/MySequences/GSPAN/\"\nOutput directory for gspan\
    \ files containing graphs."
  type: Directory
  outputBinding:
    glob: $(inputs.in_string_eg_output)
cwlVersion: v1.1
baseCommand:
- structure_2_gspan.pl
