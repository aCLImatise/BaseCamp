class: CommandLineTool
id: exoniphy.cwl
inputs:
- id: data_path
  doc: 'Path to the directory with phast data. Exoniphy default models should  be
    in <path>/exoniphy/. Default is set at compile time. '
  type: File
  inputBinding:
    prefix: --data-path
- id: score
  doc: Report log-odds scores for predictions, equal to their log total probability
    under an exon model minus their log total probability under a background model.  The
    exon model can be altered using --cds-types and --signal-types and the background
    model can be altered using --backgd-types (see below).
  type: boolean
  inputBinding:
    prefix: --score
- id: seqname
  doc: Use specified string as "seqname" field in GFF output. Default is obtained
    from input file name (double filename root, e.g., "chr22" if input file is "chr22.35.ss").
  type: string
  inputBinding:
    prefix: --seqname
- id: id_pref
  doc: Use specified string as prefix of generated ids in GFF output. Can be used
    to ensure ids are unique.  Default is obtained from input file name (single filename
    root, e.g., "chr22.35" if input file is "chr22.35.ss").
  type: string
  inputBinding:
    prefix: --idpref
- id: group_tag
  doc: Use specified string as the tag denoting groups in GFF output (default is "transcript_id").
  type: string
  inputBinding:
    prefix: --grouptag
- id: alias
  doc: Alias names in input alignment according to given definition, e.g., "hg17=human;
    mm5=mouse; rn3=rat".  Useful with default tree models and with --extrapolate.  (Default
    models use generic common names such as "human", "mouse", and "rat".  This option
    allows a mapping to be established between the leaves of trees in these files
    and the sequences of an alignment that uses an alternative naming convention.)
  type: string
  inputBinding:
    prefix: --alias
- id: no_cns
  doc: Eliminate the state/category for conserved noncoding sequence from the default
    HMM and category map.  Ignored if non-default HMM and category map are selected.
  type: boolean
  inputBinding:
    prefix: --no-cns
- id: reflect_strand
  doc: Given an HMM describing the forward strand, create a larger HMM that allows
    for features on both strands by "reflecting" the HMM about all states associated
    with background categories (see --backgd-cats).  The new HMM will be used for
    predictions on both strands.  If the default HMM is used, then this option will
    be used automatically.
  type: boolean
  inputBinding:
    prefix: --reflect-strand
- id: bias
  doc: Set "coding bias" equal to the specified value (default -3.33 if default HMM
    is used, 0 otherwise).  The coding bias is added to the log probabilities of transitions
    from background states to non-background states (see --backgd-cats), then all
    transition probabilities are renormalized.  If the coding bias is positive, then
    more predictions will tend to be made and sensitivity will tend to improve, at
    some cost to specificity; if it is negative, then fewer predictions will tend
    to be made, and specificity will tend to improve, at some cost to sensitivity.
  type: string
  inputBinding:
    prefix: --bias
- id: sens_spec
  doc: Make predictions for a range of different coding biases (see --bias), and write
    results to files with given filename root.  This allows the sensitivity/specificity
    tradeoff to be examined.  The range is fixed at -20 to 10,  and 10 different sets
    of predictions are produced.
  type: string
  inputBinding:
    prefix: --sens-spec
- id: back_gd_types
  doc: 'Feature types to be considered "background" (default value: "background,CNS").  Affects
    --reflect-strand, --score, and --bias.'
  type: string
  inputBinding:
    prefix: --backgd-types
- id: cds_types
  doc: '(for use with --score) Feature types that represent protein-coding regions
    (default value: "CDS").'
  type: string
  inputBinding:
    prefix: --cds-types
- id: signal_types
  doc: "(for use with --score) Types of features to be considered \"signals\" during\
    \ scoring (default value:  \"start_codon,stop_codon,5'splice,3'splice,prestart,cds5'ss,cds3'ss\"\
    ). One score is produced for a CDS feature (as defined by --cds-types) and the\
    \ adjacent signal features; the score is then assigned to the CDS feature."
  type: string
  inputBinding:
    prefix: --signal-types
- id: indels
  doc: Use the indel model described in Siepel & Haussler (2004).
  type: boolean
  inputBinding:
    prefix: --indels
- id: no_gaps
  doc: Prohibit gaps in sites of the specified categories (gaps result in emission
    probabilities of zero).  If the default category map is used (see --catmap), then
    gaps are prohibited in start and stop codons and at the canonical GT and AG positions
    of splice sites (with or without --indels).  In all other cases, the default behavior
    is to treat gaps as missing data, or to address them with the indel model (--indels).
  type: string
  inputBinding:
    prefix: --no-gaps
- id: require_informative
  doc: Require "informative" columns (i.e., columns with more than two non-missing-data
    characters, excluding sequences specified by --not-informative) in the given categories
    (list by name or number).  Non-informative columns will be given emission probabilities
    of zero.  If the default category map is used (see --catmap), then this option
    applies automatically to CDSs, start and stop codons, and the canonical GT and
    AG positions of splice sites.  Note that alignment gaps *are* considered informative;
    the way they are handled is defined by --indels and --no-gaps.
  type: string
  inputBinding:
    prefix: --require-informative
- id: not_informative
  doc: Do not consider the specified sequences (listed by name) when deciding whether
    a column is informative.  This option can be useful when sequences are present
    that are very close to the reference sequence and thus do not contribute much
    in the way of phylogenetic information.  E.g., one might use "--not-informative
    chimp" with a human-referenced multiple alignment including chimp sequence.
  type: string
  inputBinding:
    prefix: --not-informative
- id: quiet
  doc: Proceed quietly (without messages to stderr).
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- exoniphy
