class: CommandLineTool
id: hmm_train.cwl
inputs:
- id: g
  doc: '[OPTIONS] > out.hmm '
  type: string
  inputBinding:
    prefix: -g
- id: m
  doc: List of multiple sequence alignment files. Currently, in testing mode, the
    list must be of length one.
  type: string
  inputBinding:
    prefix: -m
- id: c
  doc: File defining mapping of feature types to category numbers.
  type: string
  inputBinding:
    prefix: -c
- id: g
  doc: "Files in GFF defining sequence features to be used in labeling sites.   Frame\
    \ of reference of  feature indices is determined feature-by-feature according\
    \ to  'seqname' attribute.  Filenames must correspond in number and order to the\
    \ elements of <msa_fname_list>. "
  type: string
  inputBinding:
    prefix: -g
- id: r
  doc: 'Before estimating transition probabilities, group features by <tag> (e.g.,
    "transcript_id" or "exon_id") and reverse complement segments of the alignment
    corresponding to groups on the reverse strand.  Groups must be non-overlapping
    (see refeature --unique). '
  type: string
  inputBinding:
    prefix: -R
- id: i
  doc: Model indels for specified categories.  To have nonzero probability for the
    states corresponding to a specified category range, indels must be "clean" (nonoverlapping),
    must be assignable by parsimony to a single branch in the phylogenetic tree, and
    must have lengths that are exact multiples of the category range size.  Avoid
    -G with this option.  If used in training mode, requires -T.
  type: string
  inputBinding:
    prefix: -I
- id: t
  doc: 'Use the specified tree topology when training for indels. '
  type: string
  inputBinding:
    prefix: -t
- id: n
  doc: Train an indel model for <nseqs> sequences, despite that the training alignment
    has a different number.  All (non-trivial) gap patterns are assumed to be equally
    frequent.
  type: string
  inputBinding:
    prefix: -n
- id: q
  doc: Proceed quietly (without updates to stderr).
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- hmm_train
