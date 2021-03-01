class: CommandLineTool
id: bamtools_2.4.1_resolve.cwl
inputs:
- id: in_in
  doc: the input BAM file(s) [stdin]
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: the output BAM file [stdout]
  type: File?
  inputBinding:
    prefix: -out
- id: in_stats
  doc: "input/output stats file,\ndepending on selected mode (see below).\nThis file\
    \ is human-readable, storing\nfragment length data generated per read\ngroup,\
    \ as well as the options used to\nconfigure the -makeStats mode"
  type: File?
  inputBinding:
    prefix: -stats
- id: in_force_compression
  doc: "if results are sent to stdout\n(like when piping to another tool),\ndefault\
    \ behavior is to leave output\nuncompressed.Use this flag to override and\nforce\
    \ compression. This feature is\ndisabled in -makeStats mode."
  type: boolean?
  inputBinding:
    prefix: -forceCompression
- id: in_make_stats
  doc: "generates a fragment-length\nstats file from the input BAM. Data is\nwritten\
    \ to file specified using the -stats\noption. MarkPairs Mode Settings are\nDISABLED."
  type: boolean?
  inputBinding:
    prefix: -makeStats
- id: in_mark_pairs
  doc: "generates an output BAM with\nalignments marked with proper-pair status.\n\
    Stats data is read from file specified\nusing the -stats option. MakeStats Mode\n\
    Settings are DISABLED"
  type: File?
  inputBinding:
    prefix: -markPairs
- id: in_two_pass
  doc: combines the -makeStats &
  type: boolean?
  inputBinding:
    prefix: -twoPass
- id: in_min_mq
  doc: minimum map quality. Used in
  type: string?
  inputBinding:
    prefix: -minMQ
- id: in_ci
  doc: "confidence interval. Set\nmin/max fragment lengths such that we\ncapture this\
    \ fraction of pairs"
  type: long?
  inputBinding:
    prefix: -ci
- id: in_umt
  doc: "unused model threshold. The\nresolve tool considers 8 possible\norientation\
    \ models for pairs. The top 2\nare selected for later use when actually\nmarking\
    \ alignments. This value determines\nthe cutoff for marking a read group as\n\
    ambiguous. Meaning that if the ratio of\nthe number of alignments from bottom\
    \ 6\nmodels to the top 2 is greater than this\nthreshold, then the read group\
    \ is flagged\nas ambiguous. By default, NO alignments\nfrom ambiguous read groups\
    \ will be marked\nas proper pairs. You may override this\nbehavior with the -force\
    \ option in\n-markPairs mode"
  type: long?
  inputBinding:
    prefix: -umt
- id: in_force
  doc: "forces all read groups to be\nmarked according to their top 2\n'orientation\
    \ models'. When generating\nstats, the 2 (out of 8 possible) models\nwith the\
    \ most observations are chosen as\nthe top models for each read group. If the\n\
    remaining 6 models account for more than\nsome threshold ([default=10%], see -umt),\n\
    then the read group is marked as\nambiguous. The default behavior is that\nfor\
    \ an ambiguous read group, NONE of its\nalignments are marked as proper-pairs.\
    \ By\nsetting this option, a read group's\nambiguity flag will be ignored, and\
    \ all of\nits alignments will be compared to the top\n2 models."
  type: boolean?
  inputBinding:
    prefix: -force
- id: in_purposes_dot
  doc: 'General Resolve Options (available in all modes):'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: the output BAM file [stdout]
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_mark_pairs
  doc: "generates an output BAM with\nalignments marked with proper-pair status.\n\
    Stats data is read from file specified\nusing the -stats option. MakeStats Mode\n\
    Settings are DISABLED"
  type: File?
  outputBinding:
    glob: $(inputs.in_mark_pairs)
hints: []
cwlVersion: v1.1
baseCommand:
- bamtools-2.4.1
- resolve
