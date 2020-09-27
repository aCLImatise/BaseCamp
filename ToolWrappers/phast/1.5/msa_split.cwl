class: CommandLineTool
id: msa_split.cwl
inputs:
- id: in_out_root
  doc: Filename root for output files (default "msa_split").
  type: File
  inputBinding:
    prefix: --out-root
- id: in_windows
  doc: "<win_size,win_overlap>\nSplit the alignment into \"windows\" of size <win_size>\
    \ bases,\noverlapping by <win_overlap>."
  type: boolean
  inputBinding:
    prefix: --windows
- id: in_by_category
  doc: "(Requires --features) Split by category, as defined by\nannotations file and\
    \ (optionally) category map (see\n--catmap)"
  type: boolean
  inputBinding:
    prefix: --by-category
- id: in_by_group
  doc: "(Requires --features) Split by groups in annotation file,\nas defined by specified\
    \ tag.  Splits midway between every\npair of consecutive groups.  Features will\
    \ be sorted by group.\nThere should be no overlapping features (see 'refeature\n\
    --unique')."
  type: File
  inputBinding:
    prefix: --by-group
- id: in_for_features
  doc: "(Requires --features) Extract section of alignment\ncorresponding to every\
    \ feature.  There will be no output for\nregions not covered by features."
  type: boolean
  inputBinding:
    prefix: --for-features
- id: in_by_index
  doc: "List of explicit indices at which to split alignment\n(comma-separated). \
    \ If the list of indices is \"10,20\",\nthen sub-alignments will be output for\
    \ sites 1-9, 10-19, and\n20-<msa_len>.  Note that the indices are relative to\
    \ the\ninput alignment, and not necessarily in genomic coordinates."
  type: long
  inputBinding:
    prefix: --by-index
- id: in_n_partitions
  doc: Split alignment equally into specified number of partitions.
  type: long
  inputBinding:
    prefix: --npartitions
- id: in_between_blocks
  doc: "(Not for use with --by-category or --for-features) Try to\npartition at sites\
    \ between alignment blocks.  Assumes a\nreference sequence alignment, with the\
    \ first sequence as the\nreference seq (as created by multiz).  Blocks of 30 sites\
    \ with\ngaps in all sequences but the reference seq are assumed to\nindicate boundaries\
    \ between alignment blocks.  Partition\nindices will not be moved more than <radius>\
    \ sites."
  type: long
  inputBinding:
    prefix: --between-blocks
- id: in_features
  doc: "(For use with --by-category, --by-group, --for-features, or\n--windows) Annotations\
    \ file.  May be GFF, BED, or genepred\nformat.  Coordinates are assumed to be\
    \ in the coordinate frame of\nthe first sequence in the alignment (assumed to\
    \ be the reference\nsequence)."
  type: File
  inputBinding:
    prefix: --features
- id: in_cat_map
  doc: "|<string>\n(Optionally use with --by-category) Mapping of feature types\n\
    to category numbers.  Can either give a filename or an\n\"inline\" description\
    \ of a simple category map, e.g.,\n--catmap \"NCATS = 3 ; CDS 1-3\" or --catmap\
    \ \"NCATS = 1 ; UTR\n1\"."
  type: File
  inputBinding:
    prefix: --catmap
- id: in_ref_idx
  doc: "(For use with --windows or --by-index) Index of frame of\nreference for split\
    \ indices.  Default is 1 (1st sequence\nassumed reference)."
  type: long
  inputBinding:
    prefix: --refidx
- id: in_in_format
  doc: "|PHYLIP|MPM|MAF|SS\nInput alignment file format.  Default is to guess format\
    \ from\nfile contents."
  type: File
  inputBinding:
    prefix: --in-format
- id: in_refseq
  doc: "(For use with --in-format MAF) Name of file containing\nreference sequence,\
    \ in FASTA format."
  type: File
  inputBinding:
    prefix: --refseq
- id: in_out_format
  doc: "|PHYLIP|MPM|SS\nOutput alignment file format.  Default is FASTA."
  type: File
  inputBinding:
    prefix: --out-format
- id: in_sub_features
  doc: "(For use with --features)  Output subsets of features\ncorresponding to subalignments.\
    \  Features overlapping\npartition boundaries will be discarded.  Not permitted\
    \ with\n--by-category."
  type: boolean
  inputBinding:
    prefix: --sub-features
- id: in_reverse_compl
  doc: "Reverse complement all segments having at least one feature on\nthe reverse\
    \ strand and none on the positive strand.  For use\nwith --by-group.  Can also\
    \ be used with --by-category to ensure\nall sites in a category are represented\
    \ in the same strand\norientation."
  type: boolean
  inputBinding:
    prefix: --reverse-compl
- id: in_gap_strip
  doc: "|ANY|<seqno>\nStrip columns in output alignments containing all gaps, any\n\
    gaps, or gaps in the specified sequence (<seqno>; indexing\nbegins with one).\
    \  Default is not to strip any columns."
  type: string
  inputBinding:
    prefix: --gap-strip
- id: in_seqs
  doc: "Include only specified sequences in output.  Indicate by\nsequence number\
    \ or name (numbering starts with 1 and is\nevaluated *after* --order is applied)."
  type: long
  inputBinding:
    prefix: --seqs
- id: in_exclude
  doc: Exclude rather than include specified sequences.
  type: boolean
  inputBinding:
    prefix: --exclude
- id: in_order
  doc: "Change order of rows in alignment to match sequence names\nspecified in name_list.\
    \  If a name appears in name_list but\nnot in the alignment, a row of gaps will\
    \ be inserted."
  type: string
  inputBinding:
    prefix: --order
- id: in_min_informative
  doc: "Only output alignments having at least <n> informative sites\n(sites at which\
    \ at least two non-gap and non-N gaps are present)."
  type: long
  inputBinding:
    prefix: --min-informative
- id: in_do_cats
  doc: "(For use with --by-category) Output sub-alignments for only the\nspecified\
    \ categories (column-delimited list)."
  type: string
  inputBinding:
    prefix: --do-cats
- id: in_tuple_size
  doc: "(for use with --by-category or --out-format SS) Size of tuples\nof columns\
    \ to consider in downstream analysis (e.g., with\ncontext-dependent phylogenetic\
    \ models; see 'phyloFit').  With\n--by-category, insert tuple_size-1 columns of\
    \ missing data\nbetween sites that were not adjacent in the original alignment,\n\
    to avoid creating artificial context.  With --out-format SS,\nexpress sufficient\
    \ statistics in terms of tuples of specified size."
  type: long
  inputBinding:
    prefix: --tuple-size
- id: in_unordered_ss
  doc: "(For use with --out-format SS)  Suppress the portion of the\nsufficient statistics\
    \ concerned with the order in which columns\nappear."
  type: boolean
  inputBinding:
    prefix: --unordered-ss
- id: in_summary
  doc: "Output summary of each output alignment to a file with suffix\n\".sum\" (includes\
    \ base frequencies and numbers of gapped columns)."
  type: File
  inputBinding:
    prefix: --summary
- id: in_quiet
  doc: Proceed quietly.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_fname
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_root
  doc: Filename root for output files (default "msa_split").
  type: File
  outputBinding:
    glob: $(inputs.in_out_root)
- id: out_out_format
  doc: "|PHYLIP|MPM|SS\nOutput alignment file format.  Default is FASTA."
  type: File
  outputBinding:
    glob: $(inputs.in_out_format)
- id: out_summary
  doc: "Output summary of each output alignment to a file with suffix\n\".sum\" (includes\
    \ base frequencies and numbers of gapped columns)."
  type: File
  outputBinding:
    glob: $(inputs.in_summary)
cwlVersion: v1.1
baseCommand:
- msa_split
