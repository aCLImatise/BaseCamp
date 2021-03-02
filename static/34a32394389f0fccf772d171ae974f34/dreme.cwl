class: CommandLineTool
id: dreme.cwl
inputs:
- id: in_directory_create_directoryand
  doc: "<directory>         create the specified output directory\nand write all output\
    \ to files in that directory"
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_oc
  doc: "create the specified output directory\noverwritting it if it already exists;\n\
    default: create dreme_out in the currrent\nworking directory"
  type: Directory?
  inputBinding:
    prefix: -oc
- id: in_positive_sequence_file
  doc: positive sequence file name (required)
  type: File?
  inputBinding:
    prefix: -p
- id: in_negative_sequence_file
  doc: "negative sequence file name (optional);\ndefault: the positive sequences are\
    \ shuffled\nto create the negative set if -n is not used"
  type: File?
  inputBinding:
    prefix: -n
- id: in_dna
  doc: use the standard DNA alphabet; this is the default
  type: boolean?
  inputBinding:
    prefix: -dna
- id: in_rna
  doc: use the standard RNA alphabet
  type: boolean?
  inputBinding:
    prefix: -rna
- id: in_protein
  doc: use the standard Protein alphabet (may not work well)
  type: boolean?
  inputBinding:
    prefix: -protein
- id: in_alph
  doc: use custom alphabet (some restrictions apply - see manual)
  type: File?
  inputBinding:
    prefix: -alph
- id: in_norc
  doc: search given strand only for motifs (not reverse complement)
  type: boolean?
  inputBinding:
    prefix: -norc
- id: in_stop_evalue_ethreshdefault
  doc: "stop if motif E-value > <ethresh>;\ndefault: 0.05"
  type: double?
  inputBinding:
    prefix: -e
- id: in_stop_motifs_been
  doc: "stop if <m> motifs have been output;\ndefault: only stop at E-value threshold"
  type: string?
  inputBinding:
    prefix: -m
- id: in_stop_time_elapseddefault
  doc: "stop if the specified time has elapsed;\ndefault: only stop at E-value threshold"
  type: string?
  inputBinding:
    prefix: -t
- id: in_number_res_generalize
  doc: "number of REs to generalize; default: 100\nHint: Increasing <ngen> will make\
    \ the motif\nsearch more thoroughly at some cost in speed."
  type: long?
  inputBinding:
    prefix: -g
- id: in_seed_shuffling_sequences
  doc: "seed for shuffling sequences; ignored\nif -n <filename> given; default: 1"
  type: File?
  inputBinding:
    prefix: -s
- id: in_verbosity
  doc: "1..5 for varying degrees of extra output\ndefault: 2"
  type: double?
  inputBinding:
    prefix: -verbosity
- id: in_png
  doc: create PNG logos
  type: boolean?
  inputBinding:
    prefix: -png
- id: in_eps
  doc: create EPS logos
  type: boolean?
  inputBinding:
    prefix: -eps
- id: in_desc
  doc: "store the description in the output;\ndefault: no description"
  type: string?
  inputBinding:
    prefix: -desc
- id: in_d_file
  doc: "acts like -desc but reads the description from\nthe specified file; allows\
    \ characters that would\notherwise have to be escaped;\ndefault: no description"
  type: File?
  inputBinding:
    prefix: -dfile
- id: in_mink
  doc: minimum width of core motif; default 3
  type: long?
  inputBinding:
    prefix: -mink
- id: in_max_k
  doc: maximum width of core motif; default 8
  type: long?
  inputBinding:
    prefix: -maxk
- id: in_sets_minkmaxkk
  doc: sets mink=maxk=<k>
  type: string?
  inputBinding:
    prefix: -k
- id: in_print_list_tested
  doc: print list of enrichment of all REs tested
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_sequences_dot
  doc: It can also find motifs in a single set of DNA sequences,
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_directory_create_directoryand
  doc: "<directory>         create the specified output directory\nand write all output\
    \ to files in that directory"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_directory_create_directoryand)
- id: out_oc
  doc: "create the specified output directory\noverwritting it if it already exists;\n\
    default: create dreme_out in the currrent\nworking directory"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_oc)
hints: []
cwlVersion: v1.1
baseCommand:
- dreme
