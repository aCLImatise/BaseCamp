class: CommandLineTool
id: hmm_train.cwl
inputs:
- id: in_list_multiple_sequence
  doc: "List of multiple sequence alignment files.\nCurrently, in testing mode, the\
    \ list must be of length one."
  type: long
  inputBinding:
    prefix: -m
- id: in_file_defining_mapping
  doc: "File defining mapping of feature types to category\nnumbers."
  type: File
  inputBinding:
    prefix: -c
- id: in_files_used_indices
  doc: "Files in GFF defining sequence\nfeatures to be used in labeling sites.   Frame\
    \ of reference of\nfeature indices is determined feature-by-feature according\
    \ to\n'seqname' attribute.  Filenames must correspond in number and order\nto\
    \ the elements of <msa_fname_list>."
  type: long
  inputBinding:
    prefix: -g
- id: in_mutually_exclusive_list
  doc: "(Mutually exclusive with -m) Assume alignments\nof the specified lengths (comma-separated\
    \ list) and do not not\nattempt to map the coordinates in the specified GFFs (assume\n\
    they are in the desired coordinate frame).  This option allows\nan HMM to be trained\
    \ directly from GFFs, without alignments.\nNot permitted with -I."
  type: long
  inputBinding:
    prefix: -M
- id: in_fastampmssdefault_ss_alignment
  doc: "|FASTA|MPM|SS\n(default SS) Alignment format."
  type: string
  inputBinding:
    prefix: -i
- id: in_estimating_transition_probabilities
  doc: "Before estimating transition probabilities, group features by <tag>\n(e.g.,\
    \ \"transcript_id\" or \"exon_id\") and reverse complement\nsegments of the alignment\
    \ corresponding to groups on the\nreverse strand.  Groups must be non-overlapping\
    \ (see refeature\n--unique)."
  type: string
  inputBinding:
    prefix: -R
- id: in_model_indels_specified
  doc: "Model indels for specified categories.  To have\nnonzero probability for the\
    \ states corresponding to a\nspecified category range, indels must be \"clean\"\
    \n(nonoverlapping), must be assignable by parsimony to a single\nbranch in the\
    \ phylogenetic tree, and must have lengths that\nare exact multiples of the category\
    \ range size.  Avoid -G with\nthis option.  If used in training mode, requires\
    \ -T."
  type: long
  inputBinding:
    prefix: -I
- id: in_use_specified_topology
  doc: "Use the specified tree topology when training\nfor indels."
  type: string
  inputBinding:
    prefix: -t
- id: in_train_indel_model
  doc: "Train an indel model for <nseqs>\nsequences, despite that the training alignment\
    \ has a different\nnumber.  All (non-trivial) gap patterns are assumed to be\n\
    equally frequent."
  type: long
  inputBinding:
    prefix: -n
- id: in_proceed_quietly_updates
  doc: Proceed quietly (without updates to stderr).
  type: boolean
  inputBinding:
    prefix: -q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hmm_train
