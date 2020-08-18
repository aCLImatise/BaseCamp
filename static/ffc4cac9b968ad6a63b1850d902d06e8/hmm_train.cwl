class: CommandLineTool
id: ../../../hmm_train.cwl
inputs:
- id: _outhmm
  doc: '[OPTIONS] > out.hmm '
  type: string
  inputBinding:
    prefix: -g
- id: list_multiple_currently
  doc: List of multiple sequence alignment files. Currently, in testing mode, the
    list must be of length one.
  type: string
  inputBinding:
    prefix: -m
- id: file_defining_mapping
  doc: File defining mapping of feature types to category numbers.
  type: string
  inputBinding:
    prefix: -c
- id: estimating_group_features
  doc: 'Before estimating transition probabilities, group features by <tag> (e.g.,
    "transcript_id" or "exon_id") and reverse complement segments of the alignment
    corresponding to groups on the reverse strand.  Groups must be non-overlapping
    (see refeature --unique). '
  type: string
  inputBinding:
    prefix: -R
- id: model_indels_specified
  doc: Model indels for specified categories.  To have nonzero probability for the
    states corresponding to a specified category range, indels must be "clean" (nonoverlapping),
    must be assignable by parsimony to a single branch in the phylogenetic tree, and
    must have lengths that are exact multiples of the category range size.  Avoid
    -G with this option.  If used in training mode, requires -T.
  type: string
  inputBinding:
    prefix: -I
- id: use_specified_topology
  doc: 'Use the specified tree topology when training for indels. '
  type: string
  inputBinding:
    prefix: -t
- id: train_indel_model
  doc: Train an indel model for <nseqs> sequences, despite that the training alignment
    has a different number.  All (non-trivial) gap patterns are assumed to be equally
    frequent.
  type: string
  inputBinding:
    prefix: -n
- id: proceed_quietly_updates
  doc: Proceed quietly (without updates to stderr).
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- hmm_train
