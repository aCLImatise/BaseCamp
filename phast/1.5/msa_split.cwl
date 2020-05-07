class: CommandLineTool
id: msa_split.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fname
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: windows
  doc: 1000000,1000 --out-format SS \
  type: boolean
  inputBinding:
    prefix: --windows
- id: between_blocks
  doc: 5000 --out-root chr1
  type: boolean
  inputBinding:
    prefix: --between-blocks
- id: windows
  doc: 1000000,1000 --out-format SS \
  type: boolean
  inputBinding:
    prefix: --windows
- id: between_blocks
  doc: 5000 --out-root chr1 --unordered-ss
  type: boolean
  inputBinding:
    prefix: --between-blocks
- id: ref_idx
  doc: (For use with --windows or --by-index) Index of frame of reference for split
    indices.  Default is 1 (1st sequence assumed reference).
  type: string
  inputBinding:
    prefix: --refidx
- id: seqs
  doc: Include only specified sequences in output.  Indicate by  sequence number or
    name (numbering starts with 1 and is evaluated *after* --order is applied).
  type: string
  inputBinding:
    prefix: --seqs
- id: exclude
  doc: Exclude rather than include specified sequences.
  type: boolean
  inputBinding:
    prefix: --exclude
- id: order
  doc: Change order of rows in alignment to match sequence names specified in name_list.  If
    a name appears in name_list but not in the alignment, a row of gaps will be inserted.
  type: string
  inputBinding:
    prefix: --order
- id: min_informative
  doc: Only output alignments having at least <n> informative sites (sites at which
    at least two non-gap and non-N gaps are present).
  type: string
  inputBinding:
    prefix: --min-informative
- id: do_cats
  doc: (For use with --by-category) Output sub-alignments for only the specified categories
    (column-delimited list).
  type: string
  inputBinding:
    prefix: --do-cats
- id: tuple_size
  doc: (for use with --by-category or --out-format SS) Size of tuples of columns to
    consider in downstream analysis (e.g., with context-dependent phylogenetic models;
    see 'phyloFit').  With --by-category, insert tuple_size-1 columns of missing data
    between sites that were not adjacent in the original alignment, to avoid creating
    artificial context.  With --out-format SS, express sufficient statistics in terms
    of tuples of specified size.
  type: string
  inputBinding:
    prefix: --tuple-size
- id: unordered_ss
  doc: (For use with --out-format SS)  Suppress the portion of the sufficient statistics
    concerned with the order in which columns appear.
  type: boolean
  inputBinding:
    prefix: --unordered-ss
- id: summary
  doc: Output summary of each output alignment to a file with suffix ".sum" (includes
    base frequencies and numbers of gapped columns).
  type: boolean
  inputBinding:
    prefix: --summary
- id: quiet
  doc: Proceed quietly.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- msa_split
