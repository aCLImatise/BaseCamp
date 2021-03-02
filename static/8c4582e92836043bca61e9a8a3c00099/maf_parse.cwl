class: CommandLineTool
id: maf_parse.cwl
inputs:
- id: in_out_format
  doc: "|PHYLIP|FASTA|MPM|SS\n(Default MAF).  Output file format.  SS format is only\n\
    available un-ordered.  Note that some options, which involve\nreversing alignments\
    \ based on strand, or stripping gaps,\ncannot be output in MAF format and use\
    \ FASTA by default.\nAlso note that when output format is not MAF, the entire\n\
    output must be loaded into memory."
  type: File?
  inputBinding:
    prefix: --out-format
- id: in_pretty
  doc: "Pretty-print alignment (use '.' when character matches\ncorresponding character\
    \ in first sequence).  Ignored if\n--out-format SS is selected."
  type: boolean?
  inputBinding:
    prefix: --pretty
- id: in_start
  doc: "Start index of sub-alignment (indexing starts with 1).\nCoordinates are in\
    \ terms of the reference sequence unless\nthe --no-refseq option is used, in which\
    \ case they are in\nterms of alignment columns.  Default is 1."
  type: long?
  inputBinding:
    prefix: --start
- id: in_end
  doc: "End index of sub-alignment.  Default is length of alignment.\nCoordinates\
    \ defined as in --start option, above."
  type: long?
  inputBinding:
    prefix: --end
- id: in_seqs
  doc: "Comma-separated list of sequences to include (default)\nexclude (if --exclude).\
    \  Indicate by sequence number or name\n(numbering starts with 1 and is evaluated\
    \ *after* --order is\napplied)."
  type: long?
  inputBinding:
    prefix: --seqs
- id: in_exclude
  doc: Exclude rather than include specified sequences.
  type: boolean?
  inputBinding:
    prefix: --exclude
- id: in_order
  doc: "Change order of rows in alignment to match sequence names\nspecified in name_list.\
    \  The first name in the alignment becomes\nthe reference sequence."
  type: string?
  inputBinding:
    prefix: --order
- id: in_no_refseq
  doc: "Do not assume first sequence in MAF is refseq.  Instead, use\ncoordinates\
    \  given by absolute position in alignment (starting\nfrom 1)."
  type: boolean?
  inputBinding:
    prefix: --no-refseq
- id: in_split
  doc: "Split MAF into pieces by length, and puts output in\noutRootX.maf, where X=1,2,...,numPieces.\
    \  outRoot can be\nmodified with --out-root, and the minimum number of digits\
    \ in X\ncan be modified with --out-root-digits.\nSplits between blocks, so that\
    \ each output file does not exceed\nspecified length.  By default, length is counted\
    \ by distance\nspanned in alignment by refseq, unless --no-refseq is specified."
  type: long?
  inputBinding:
    prefix: --split
- id: in_out_root
  doc: "Filename root for output files produced by --split (default\n\"maf_parse\"\
    )."
  type: File?
  inputBinding:
    prefix: --out-root
- id: in_out_root_digits
  doc: "(for use with --split).  The minimum number of digits used to\nindex each\
    \ output file produced by split."
  type: long?
  inputBinding:
    prefix: --out-root-digits
- id: in_features
  doc: "Annotations file.  May be GFF, BED, or genepred format.\nCoordinates assumed\
    \ to be in frame of first sequence of\nalignment (reference sequence).  By default,\
    \ outputs subset of\nMAF which are labeled in annotations file.  But can be used\
    \ with\n--by-category, --by-group, and/or --do-cats to split MAF by\nannotation\
    \ type.  Or if used with --mask-features, is only used\nto determine regions to\
    \ mask.  Implies --strip-i-lines,\n--strip-e-lines"
  type: File?
  inputBinding:
    prefix: --features
- id: in_by_category
  doc: "(Requires --features).  Split by category, as defined by\nannotations file\
    \ and (optionally) category map (see --catmap)."
  type: boolean?
  inputBinding:
    prefix: --by-category
- id: in_do_cats
  doc: "(For use with --by-category) Output sub-alignments for only the\nspecified\
    \ categories."
  type: string?
  inputBinding:
    prefix: --do-cats
- id: in_cat_map
  doc: "|<string>\n(Optionally use with --by-category) Mapping of feature types to\n\
    category numbers.  Can either give a filename or an \"inline\"\ndescription of\
    \ a simple category map, e.g.,\n--catmap \"NCATS = 3 ; CDS 1-3\" or\n--catmap\
    \ \"NCATS = 1; UTR 1\"."
  type: File?
  inputBinding:
    prefix: --catmap
- id: in_by_group
  doc: "(Requires --features).  Split by groups in annotation file, as\ndefined by\
    \ specified tag."
  type: File?
  inputBinding:
    prefix: --by-group
- id: in_mask_bases
  doc: "Mask all bases with quality score <= n.  Note that n is in the\nsame units\
    \ as displayed in the MAF (ranging from 0-9), and\nrepresents min(9, floor(PHRED_score/5)).\
    \  Bases without any\nquality score will not be masked."
  type: long?
  inputBinding:
    prefix: --mask-bases
- id: in_masked_file
  doc: "(For use with --mask-bases).  Write a file containing all the\nregions masked\
    \ for low quality.  The file will be in 0-based\ncoordinates relative to the refseq,\
    \ with an additional column\ngiving the name of the species masked.  Note that\
    \ low-quality bases\nmasked at alignment columns with a gap in the reference sequence\n\
    may not be represented in the output file."
  type: File?
  inputBinding:
    prefix: --masked-file
- id: in_mask_features
  doc: "(Requires --features).  Mask all bases annotated in features in the\ngiven\
    \ species (can be a comma-delimited list of species).  Note that\ncoordinates\
    \ are always in terms of refseq, even if a different species\nis being masked."
  type: string?
  inputBinding:
    prefix: --mask-features
- id: in_strip_i_lines
  doc: Remove lines in MAF starting with i.
  type: boolean?
  inputBinding:
    prefix: --strip-i-lines
- id: in_strip_e_lines
  doc: Remove lines in MAF starting with e.
  type: boolean?
  inputBinding:
    prefix: --strip-e-lines
- id: in_in_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_format
  doc: "|PHYLIP|FASTA|MPM|SS\n(Default MAF).  Output file format.  SS format is only\n\
    available un-ordered.  Note that some options, which involve\nreversing alignments\
    \ based on strand, or stripping gaps,\ncannot be output in MAF format and use\
    \ FASTA by default.\nAlso note that when output format is not MAF, the entire\n\
    output must be loaded into memory."
  type: File?
  outputBinding:
    glob: $(inputs.in_out_format)
- id: out_out_root
  doc: "Filename root for output files produced by --split (default\n\"maf_parse\"\
    )."
  type: File?
  outputBinding:
    glob: $(inputs.in_out_root)
- id: out_masked_file
  doc: "(For use with --mask-bases).  Write a file containing all the\nregions masked\
    \ for low quality.  The file will be in 0-based\ncoordinates relative to the refseq,\
    \ with an additional column\ngiving the name of the species masked.  Note that\
    \ low-quality bases\nmasked at alignment columns with a gap in the reference sequence\n\
    may not be represented in the output file."
  type: File?
  outputBinding:
    glob: $(inputs.in_masked_file)
hints: []
cwlVersion: v1.1
baseCommand:
- maf_parse
